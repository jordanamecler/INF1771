//
//  BinaryTree.swift
//  Torre de Comando
//
//  Created by Jordana Mecler on 23/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import Foundation
import Cocoa

class Tree {
    
    var data: [Int]?
    var fim: [Int]?
    var parent: Tree?
    var visited = [Tree]()
    var actual: Tree?
    var lines: Int?
    var columns: Int?
    var matrix = Matrix2D<Int, Int>()
    
    init() {
        
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
                print(actual?.data![0])
                print(actual?.data![1])
                return visited
            }
            
            
            valor.removeAll()
            neighbor1 = Tree()
            neighbor2 = Tree()
            neighbor3 = Tree()
            neighbor4 = Tree()
            neighbors.removeAll()
            
            if (actual!.data![0]-1 >= 0) && (actual!.data![0]-1 < lines) && (matrix[(actual?.data![0])!-1, (actual?.data![1])!] != "X") {
                
                valor.append(actual!.data![0]-1)
                valor.append(actual!.data![1])
                
                neighbor1.data = valor
                neighbor1.parent = actual
                neighbors.append(neighbor1)

            }

            valor.removeAll()
            
            if (actual!.data![1]+1 >= 0) && (actual!.data![1]+1 < columns) && (matrix[(actual?.data![0])!, (actual?.data![1])!+1] != "X") {
                
                valor.append(actual!.data![0])
                valor.append(actual!.data![1]+1)
                
                neighbor2.data = valor
                neighbor2.parent = actual
                neighbors.append(neighbor2)
            }
            
            valor.removeAll()
            
            if (actual!.data![1]-1 >= 0) && (actual!.data![1]-1 < columns) && (matrix[(actual?.data![0])!, (actual?.data![1])!-1] != "X") {
                
                valor.append(actual!.data![0])
                valor.append(actual!.data![1]-1)
                
                neighbor3.data = valor
                neighbor3.parent = actual
                neighbors.append(neighbor3)
            }
            
            valor.removeAll()
            
            
            if (actual!.data![0]+1 >= 0) && (actual!.data![0] < lines) && (matrix[(actual?.data![0])!+1, (actual?.data![1])!] != "X") {
                
                valor.append(actual!.data![0]+1)
                valor.append(actual!.data![1])
                
                neighbor4.data = valor
                neighbor4.parent = actual
                neighbors.append(neighbor4)
            }
            
            visitado = false
            
            for n in neighbors {
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
                            queue.append(n)
                        }
                    }

                }
                visitado = false
            }
           
        }
        return []
    }
}