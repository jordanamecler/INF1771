//
//  BinaryTree.swift
//  Torre de Comando
//
//  Created by Jordana Mecler on 23/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import Foundation

class Tree {
    
    var data: [Int]?
    var fim: [Int]?
    var parent: Tree?
    var visited = [Tree]()
    var actual: Tree?
    var lines: Int?
    var columns: Int?
    var matrix = Matrix2D<Int, Int>()
    var priority : Double!
    
    init() {
        
    }
    
    internal func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    func treeSearch() -> [Tree] {
        
        let inicio = Tree()
        var neighbors = [Tree]()
        var neighbor1 = Tree()
        var neighbor2 = Tree()
        var neighbor3 = Tree()
        var neighbor4 = Tree()
        var valor = [Int]()
        var visitado = Bool()
        
        inicio.data = self.data
        
        
        var queue = [Tree]()
        queue.append(inicio)
        
        while(queue.count > 0) {
            
            actual = queue.first
            queue.removeFirst()
            
            var info = [Int]()
            info.append((actual?.data![0])!)
            info.append((actual?.data![1])!)

            delay(2.0) {
                
                dispatch_async(dispatch_get_main_queue()){
                    NSNotificationCenter.defaultCenter().postNotificationName("novoVisitado", object: info)
                }
                
            }
            
            visitado = false
            
            if visited.count == 0 {
                visited.append(actual!)
            }
            else {
                for v in visited {
                    if v.data! == (actual?.data)! {
                        visitado = true
                    }
                }
                if visitado == false {
                    visited.append(actual!)
                }
            }
            
            if((actual?.data)! == fim!) {
                //print("\(actual!.data![0])")
                //print(actual?.data![1])
                print("Visitados: \(visited.count)")
                //print(queue.count)
                return visited
            }
            
            valor.removeAll()
            neighbor1 = Tree()
            neighbor2 = Tree()
            neighbor3 = Tree()
            neighbor4 = Tree()
            neighbors.removeAll()
            
            if (actual!.data![0]-1 >= 0) && (actual!.data![0]-1 < lines) {
                
                valor.append(actual!.data![0]-1)
                valor.append(actual!.data![1])
                
                matrix[valor[0], valor[1]]!.custo = matrix[actual!.data![0], actual!.data![1]]!.custo + new_cost(valor)
                
                neighbor1.data = valor
                neighbor1.parent = actual
                neighbors.append(neighbor1)
                
            }
            
            valor.removeAll()
            
            if (actual!.data![1]+1 >= 0) && (actual!.data![1]+1 < columns) {
                
                valor.append(actual!.data![0])
                valor.append(actual!.data![1]+1)
                
                matrix[valor[0], valor[1]]!.custo = matrix[actual!.data![0], actual!.data![1]]!.custo + new_cost(valor)
                
                neighbor2.data = valor
                neighbor2.parent = actual
                neighbors.append(neighbor2)
            }
            
            valor.removeAll()
            
            if (actual!.data![1]-1 >= 0) && (actual!.data![1]-1 < columns) {
                
                valor.append(actual!.data![0])
                valor.append(actual!.data![1]-1)
                
                matrix[valor[0], valor[1]]!.custo = matrix[actual!.data![0], actual!.data![1]]!.custo + new_cost(valor)
                
                neighbor3.data = valor
                neighbor3.parent = actual
                neighbors.append(neighbor3)
            }
            
            valor.removeAll()
            
            
            if (actual!.data![0]+1 >= 0) && (actual!.data![0] < lines) {
                
                valor.append(actual!.data![0]+1)
                valor.append(actual!.data![1])
                
                matrix[valor[0], valor[1]]!.custo = matrix[actual!.data![0], actual!.data![1]]!.custo + new_cost(valor)
                
                neighbor4.data = valor
                neighbor4.parent = actual
                neighbors.append(neighbor4)
            }
            
            visitado = false
            
            for n in neighbors {
                
                let iData = n.data![0]
                let jData = n.data![1]
                
                let priority = heuristic(fim!, prox: n.data!) + matrix[iData, jData]!.custo
                
                n.priority = priority
                
                for v in visited {
                    
                    if ((n.data![0] == v.data![0]) && (n.data![1] == v.data![1])) {
                        visitado = true
                    }
                }
                if visitado == false {
                    if queue.count == 0 {
                        queue.append(n)
                    }
                    else {
                        for q in queue {
                            if q.data! == n.data! {
                                visitado = true
                            }
                        }
                        if visitado == false {
                            queue = orginizeArray(queue, new: n)
                        }
                    }
                    
                }
                visitado = false
            }
            
        }
        return []
    }
    
    
    func heuristic(fim: [Int], prox: [Int]) -> Double {
        
        //return Double(abs(prox[0]-fim[0])) + Double(abs(prox[1]-fim[1]))
        
        return sqrt(pow(Double(abs(fim[0] - prox[0])), 2) + pow(Double(abs(fim[1] - prox[1])), 2))
    }
    
    func new_cost(prox: [Int]) -> Double {
        
        if(matrix[prox[0], prox[1]]!.character == "M"){
            return 200
        }
        
        if(matrix[prox[0], prox[1]]!.character == "R"){
            return 5
        }
        
        if(matrix[prox[0], prox[1]]!.character == "B") {
            return 1
        }
        
        if(matrix[prox[0], prox[1]]!.character == "C") {
            return 50
        }
        
        return 1
        
    }
    
    func orginizeArray(array : [Tree], new: Tree) -> [Tree] {
        var insert : Bool = false
        var newQue = [Tree]()
        
        for n in array {
            
            if(n.priority >= new.priority && !insert){
                newQue.append(new)
                insert = true
            }
            
            newQue.append(n)
            
        }
        
        if(insert == false){
            newQue.append(new)
        }
        
        return newQue
        
    }
    
}