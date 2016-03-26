//
//  MainViewController.swift
//  Torre de Comando
//
//  Created by Matheus Falcão on 14/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let matrix = FileManager.readFile()!
        
        for i in 0...matrix.lines{
            for j in 0...matrix.columns{
                let squareView = SquareView(line: i, column: j, value: matrix[i, j]!, viewHeight: view.frame.height)
                
                view.addSubview(squareView)
            }
        }
        
        var inicio = [Int]()
        var fim = [Int]()
        
        for i in 0...matrix.lines {
            for j in 0...matrix.columns {
                if matrix[i, j] == "I" {
                    inicio.append(i)
                    inicio.append(j)
                }
                if matrix[i, j] == "F" {
                    fim.append(i)
                    fim.append(j)
                }
            }
        }
        
        let arvore = Tree()
        arvore.data = inicio
        arvore.lines = matrix.lines
        arvore.columns = matrix.columns
        arvore.fim = fim
        arvore.matrix = matrix
        
        let visited = arvore.treeSearch()
        
        var ultimo = Tree()
        ultimo = (visited.last?.parent)!

        var tamCaminho = 0
        
        while ultimo.parent != nil {
            let squareView = SquareView(line: ultimo.data![0], column: ultimo.data![1], value: "v", viewHeight: view.frame.height)
            
            view.addSubview(squareView)
            
            ultimo = ultimo.parent!
            
            tamCaminho++
        }
        print(tamCaminho)
//        if visited.count > 0 {
//            for v in visited {
//                let squareView = SquareView(line: v.data![0], column: v.data![1], value: "v", viewHeight: view.frame.height)
//                
//                view.addSubview(squareView)
//            }
//        }
//        else {
//            print("erro")
//        }
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}

