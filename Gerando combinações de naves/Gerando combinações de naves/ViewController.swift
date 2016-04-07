//
//  ViewController.swift
//  Gerando combinações de naves
//
//  Created by Matheus Falcão on 06/04/16.
//  Copyright © 2016 Matheus e Jordana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var naves : [Float] = [1.1, 1.2, 1.3, 1.4, 1.5]
    var navesUsadas = [4, 5, 5, 5, 5]
    var bases : [Float] = [60, 65, 70, 75, 80, 85, 90, 95, 100, 110, 120]
    var tempo : Float = 0.0
    var menorTempo : Float = 10000
    var base = 1
    var nave = 0
    var qtdNaves = 0
    var somatorio : Float = 0
    var naveAleatoria = 0
    var contador : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        while(true) {
            
            base = 1
            tempo = 0
            navesUsadas = [5, 5, 5, 5, 5]
            contador = 0
            
            while(base < 12){

                somatorio=0;
                
                qtdNaves = Int(arc4random_uniform(5) + 1)
                
                while(qtdNaves != 0){
                    
                    nave = Int(arc4random_uniform(5) + 1)
                    
                    contador = 0
                    
                    while(navesUsadas[nave-1] == 0 && contador < 50){
                        nave = Int(arc4random_uniform(5) + 1)
                        contador++
                    }

                    
                    if(contador < 50){
                        navesUsadas[nave-1]--
                        
                        somatorio = naves[nave-1] + somatorio
                        qtdNaves--
                    
                    } else {
                        qtdNaves = 0
                    }
                
                }
                
                if(contador < 50){
                    tempo = tempo + (bases[base-1]/somatorio)
                    base++
                } else {
                    tempo = 10000
                    base = 12
                }
            
            }
            
            if(menorTempo > tempo){
                menorTempo = tempo
                
            }
            
            print("melhor tempo: \(menorTempo) \n");

            
        }
        
        
    }


}

