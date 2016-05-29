package VC;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;

import Prolog.PrologConnection;

class Frame extends JFrame implements ActionListener{
	
	/**
	 * Tela 1
	 */
	private static final long serialVersionUID = 1L;
	
	PrologConnection pg;
	
	Tabuleiro tabuleiro;
	
	public Frame()
	{
		//Tamanho da tela:
		setSize(700,510);
		
		//Configura��es gerais:
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setResizable(false);
		setLocationRelativeTo(null);
		setLayout(null);
		
		//T�tulo da janela:
		setTitle("Wampus");
		
		//Colocando a tabuleiro:
		tabuleiro = new Tabuleiro();
		tabuleiro.setBounds(0, 0, 500, 500);
		
		add(tabuleiro);
		
		this.setBackground(Color.BLACK);
		
		//Colocando os bot�es na tela:
		setButtons();
		
		//Criando a liga��o com o prolog:
		pg = new PrologConnection();
		
		//Mostrando a janela:
		setVisible(true); 
		
		//Testando se os arquivos do Prolog est�o certos:
		if(pg.connectProlog() == false) {
			System.out.println("Erro ao consultar arquivo do Prolog");
		}
		
	}
	
	private void setButtons() {
		
		//Bot�o de come�ar:
		JButton beginButton = new JButton("Come�ar");
		beginButton.setBounds(540, 20, 100, 30);
		beginButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				System.out.println(pg.consult(""));
				
			}
		});
		
		add(beginButton);
		
		//Bot�o de reniciar:
		JButton restartButton = new JButton("Reniciar");
		restartButton.setBounds(540, 70, 100, 30);
				
		add(restartButton);
		
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

}

