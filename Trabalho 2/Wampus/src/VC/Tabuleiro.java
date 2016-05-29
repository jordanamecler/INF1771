package VC;

import java.awt.*;
import javax.swing.JPanel;

class Tabuleiro extends JPanel{

	/**
	 * Tabuleiro
	 */
	private static final long serialVersionUID = 1L;
	
	private Graphics2D g;
	
	public Tabuleiro()
	{
		
	}
	
	public void paint (Graphics graphic)
	{
		g = (Graphics2D) graphic;
		
		/**********************************************************
		 * 
		 *  Casas do tabuleiro
		 *
		 **********************************************************/
		
		int size = 40;
		
		for(int i=0; i<12; i++) {
			for(int j=0; j<12; j++) {
				
				g.setColor(Color.WHITE);
				g.fillRect(i*size, j*size, size, size);
				g.setColor(Color.BLACK);
				g.drawRect(i*size, j*size, size, size);
				
			}
		}
		
	}
	
}
