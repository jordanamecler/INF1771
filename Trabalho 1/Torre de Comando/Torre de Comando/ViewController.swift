//
//  ViewController.swift
//  Torre de comando
//
//  Created by Matheus Falcão on 04/04/16.
//  Copyright © 2016 Matheus e Jordana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* **************************************************************************************************
    **
    **  MARK: Variables desclaration
    **
    ****************************************************************************************************/
    
    var matrix = FileManager.readFile()!
    var inicio = [Int]()
    var fim = [Int]()
    var visited = [Tree]()
    var ultimo = Tree()
    
    var custosBase : Double = 0.0
    
    var timer = NSTimer();
    var new = [Tree]();
    var new2 = [Tree]();
    
    var plans : [Plan] = []
    
    var arrayViews : [UIImageView] = []
    
    let visitedButton = UIButton()
    let routeButton = UIButton()
    let clearButton = UIButton()
    let otimiButton = UIButton()
    
    let costLabel = UILabel()
    let sizeLabel = UILabel()
    let combLabel = UILabel()
    
    var cost : Double = 0.0
    var size : Int = 0
    
    let plan1 = UIImageView()
    let plan2 = UIImageView()
    let plan3 = UIImageView()
    let plan4 = UIImageView()
    let plan5 = UIImageView()
    
    let plan1Energy = UILabel()
    let plan2Energy = UILabel()
    let plan3Energy = UILabel()
    let plan4Energy = UILabel()
    let plan5Energy = UILabel()
    
    var otimiza : Int = 0
    
    /* **************************************************************************************************
    **
    **  MARK: Views
    **
    ****************************************************************************************************/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Plans array:
        
        for(var i=0; i<5; i++){
            
            let plan = Plan()
            
            plan.energy = 5
            plan.fire = 1.1 + Double(i)*0.1
            
            plans.append(plan)
            
        }
        
        for i in 0...matrix.lines{
            for j in 0...matrix.columns{
                let squareView = SquareView(line: i, column: j, value: matrix[i, j]!.character, numLines: matrix.lines, numColumns: matrix.columns)
                
                view.addSubview(squareView)
                
            }
        }
        
        let centerX = self.view.center.x / 3
        
        visitedButton.frame = CGRectMake(0, 0, 120, 40)
        visitedButton.center.y = 1120
        visitedButton.center.x = centerX
        visitedButton.setTitle("Visitados", forState: .Normal)
        visitedButton.backgroundColor = UIColor.lightGrayColor()
        visitedButton.addTarget(self, action: "visitedPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(visitedButton)
        
        routeButton.frame = CGRectMake(0, 0, 120, 40)
        routeButton.center.y = 1120
        routeButton.center.x = centerX * 2
        routeButton.setTitle("Caminho", forState: .Normal)
        routeButton.backgroundColor = UIColor.lightGrayColor()
        routeButton.addTarget(self, action: "routePressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(routeButton)
        
        clearButton.frame = CGRectMake(0, 0, 120, 40)
        clearButton.center.y = 1120
        clearButton.center.x = centerX * 3
        clearButton.setTitle("Limpar Mapa", forState: .Normal)
        clearButton.backgroundColor = UIColor.lightGrayColor()
        clearButton.addTarget(self, action: "clearPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(clearButton)
        
        otimiButton.frame = CGRectMake(0, 0, 120, 40)
        otimiButton.center.y = 1120
        otimiButton.center.x = centerX * 4
        otimiButton.setTitle("Otimiza", forState: .Normal)
        otimiButton.backgroundColor = UIColor.lightGrayColor()
        otimiButton.addTarget(self, action: "otimizaPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(otimiButton)
        
        costLabel.frame = CGRectMake(0, 0, 300, 50)
        costLabel.center.y = 1200
        costLabel.center.x = centerX * 1
        costLabel.font = UIFont(name: costLabel.font!.fontName, size: 20.0)
        costLabel.text = "Custo do caminho: \(cost)"
        self.view.addSubview(costLabel)
        
        sizeLabel.frame = CGRectMake(0, 0, 300, 50)
        sizeLabel.center.y = 1250
        sizeLabel.center.x = centerX * 1
        sizeLabel.font = UIFont(name: costLabel.font!.fontName, size: 20.0)
        sizeLabel.text = "Tamanho do caminho: \(size)"
        self.view.addSubview(sizeLabel)
        
        combLabel.frame = CGRectMake(0, 0, 300, 50)
        combLabel.center.y = 1250
        combLabel.center.x = centerX * 3
        combLabel.font = UIFont(name: costLabel.font!.fontName, size: 20.0)
        combLabel.text = "Combinatória: \(custosBase)"
        self.view.addSubview(combLabel)
        
        plan1.frame = CGRectMake(0, 0, 50, 50)
        plan1.center.y = 1300
        plan1.center.x = centerX * 1
        plan1.image = UIImage(named: "Fighter1")
        self.view.addSubview(plan1)
        
        plan1Energy.frame = CGRectMake(0, 0, 100, 50)
        plan1Energy.center.y = 1350
        plan1Energy.center.x = centerX * 1
        plan1Energy.text = "Energy: \(plans[0].energy)"
        self.view.addSubview(plan1Energy)
        
        plan2.frame = CGRectMake(0, 0, 50, 50)
        plan2.center.y = 1300
        plan2.center.x = centerX * 1 + 120
        plan2.image = UIImage(named: "Fighter2")
        self.view.addSubview(plan2)
        
        plan2Energy.frame = CGRectMake(0, 0, 100, 50)
        plan2Energy.center.y = 1350
        plan2Energy.center.x = centerX * 1 + 120
        plan2Energy.text = "Energy: \(plans[1].energy)"
        self.view.addSubview(plan2Energy)
        
        plan3.frame = CGRectMake(0, 0, 50, 50)
        plan3.center.y = 1300
        plan3.center.x = centerX * 1 + 250
        plan3.image = UIImage(named: "Fighter3")
        self.view.addSubview(plan3)
        
        plan3Energy.frame = CGRectMake(0, 0, 100, 50)
        plan3Energy.center.y = 1350
        plan3Energy.center.x = centerX * 1 + 250
        plan3Energy.text = "Energy: \(plans[2].energy)"
        self.view.addSubview(plan3Energy)
        
        plan4.frame = CGRectMake(0, 0, 50, 50)
        plan4.center.y = 1300
        plan4.center.x = centerX * 1 + 380
        plan4.image = UIImage(named: "Fighter4")
        self.view.addSubview(plan4)
        
        plan4Energy.frame = CGRectMake(0, 0, 100, 50)
        plan4Energy.center.y = 1350
        plan4Energy.center.x = centerX * 1 + 380
        plan4Energy.text = "Energy: \(plans[3].energy)"
        self.view.addSubview(plan4Energy)
        
        plan5.frame = CGRectMake(0, 0, 50, 50)
        plan5.center.y = 1300
        plan5.center.x = centerX * 1 + 500
        plan5.image = UIImage(named: "Fighter5")
        self.view.addSubview(plan5)
        
        plan5Energy.frame = CGRectMake(0, 0, 100, 50)
        plan5Energy.center.y = 1350
        plan5Energy.center.x = centerX * 1 + 500
        plan5Energy.text = "Energy: \(plans[4].energy)"
        self.view.addSubview(plan5Energy)
        
        for i in 0...matrix.lines {
            for j in 0...matrix.columns {
                if matrix[i, j]!.character == "I" {
                    inicio.append(i)
                    inicio.append(j)
                }
                if matrix[i, j]!.character == "F" {
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
        
        visited = arvore.treeSearch(plans)
        
        for plan in plans {
            plan.energy = 5
        }
        
    }
    
    /* **************************************************************************************************
    **
    **  MARK: Button Action
    **
    ****************************************************************************************************/
    
    func otimizaPressed() {
        
        clearPressed()
        
        Tree.otimiza = 1
        otimiza = 1
        
        routePressed()
        
        otimiza=0
        
    }
    
    func clearPressed() {
        
        for square in arrayViews {
            
            square.removeFromSuperview()
            
        }
        
        Tree.otimiza = 0
        
        cost = 0.0
        custosBase = 0.0
        size = 0
        otimiza = 0
        
        for plan in plans {
            plan.energy = 5
        }
        
        plan1Energy.text = "Energy: \(plans[0].energy)"
        plan2Energy.text = "Energy: \(plans[1].energy)"
        plan3Energy.text = "Energy: \(plans[2].energy)"
        plan4Energy.text = "Energy: \(plans[3].energy)"
        plan5Energy.text = "Energy: \(plans[4].energy)"
        
        costLabel.text = "Custo do caminho: \(Double(round(1000*cost)/1000))"
        
        sizeLabel.text = "Tamanho do caminho: \(size)"
        
        combLabel.text = "Combinatória: \(Double(round(1000*custosBase)/1000))"
        
        arrayViews.removeAll()
        
    }
    
    func addImages() {
        
        visitedButton.enabled = false
        routeButton.enabled = false
        clearButton.enabled = false
        
        if new.first == nil || (new.first?.data)! == self.fim {
            visitedButton.enabled = true
            routeButton.enabled = true
            clearButton.enabled = true
            timer.invalidate()
        }
        else if ((new.first!.data![0] != self.inicio[0]) || (new.first!.data![1] != self.inicio[1])) && ((new.first!.data![0] != self.fim[0]) || (new.first!.data![1] != self.fim[1])) {
            
            let squareView = SquareView(line: new.first!.data![0], column: new.first!.data![1], value: "v", numLines: matrix.lines, numColumns: matrix.columns)
            
            cost += returnCost(new.first!.data![0], coluna: new.first!.data![1])
            
            combLabel.text = "Combinatória: \(Double(round(1000*custosBase)/1000))"
            
            plan1Energy.text = "Energy: \(plans[0].energy)"
            plan2Energy.text = "Energy: \(plans[1].energy)"
            plan3Energy.text = "Energy: \(plans[2].energy)"
            plan4Energy.text = "Energy: \(plans[3].energy)"
            plan5Energy.text = "Energy: \(plans[4].energy)"
            
            costLabel.text = "Custo do caminho: \(Double(round(1000*cost)/1000))"
            
            size++
            
            sizeLabel.text = "Tamanho do caminho: \(size)"
            
            self.view.addSubview(squareView)
            
            self.arrayViews.last?.image = UIImage(named: "smoke")
            
            self.arrayViews.append(squareView)
            
            new.removeFirst()
            
        }
        else {
            new.removeFirst()
        }

    }
    
    func visitedPressed() {
        
        clearPressed()
        
        new.removeAll()
        
        new = visited
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "addImages", userInfo: nil, repeats: true)
        
    }
    
    func routePressed() {
        
        if(otimiza == 0){
            clearPressed()
        }
        
        ultimo = (visited.last?.parent)!
        
//        print("Custo do caminho: \(matrix[fim[0], fim[1]]?.custo)")
        
        var tamCaminho = 0
        var custoCaminho : Double = 0
        
        new.removeAll()
        
        while ultimo.parent != nil {
            
            new.append(ultimo)
            
            custoCaminho += returnCost(ultimo.data![0], coluna: ultimo.data![1])
            
            ultimo = ultimo.parent!
            
            tamCaminho++
        }
        
        for plan in plans {
            plan.energy = 5
        }
        
        custosBase = 0.0
        
//        print("Tamanho do caminho: \(tamCaminho)")
        
        new = new.reverse()
//        print(new.count)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "addImages", userInfo: nil, repeats: true)
    }
    
    func returnCost(linha : Int, coluna : Int) -> Double {
        
        let c = matrix[linha, coluna]!.character
        
        switch(c) {
            
            case "M":
                return 200
            
            case "R":
                return 5
            
            case "B":
                let custo = Tree.valorBase(linha, coluna: coluna, plans: plans)
                custosBase += custo
                return custo
            
            case "C":
                return 50
            
            case ".":
                return 1
            
            default:
                return 0
            
        }
        
    }
    
    
}

