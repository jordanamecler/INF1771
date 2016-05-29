package Prolog;

import org.jpl7.*;
import java.lang.System;
import java.util.Map;

public class PrologConnection {
	
	Atom testePl = new Atom("teste.pl"); 
	
	public boolean connectProlog() {
		
		Term[] vet = new Term[] {testePl};
		
		Query q1 = new Query("consult", vet);
		
		try{
			
			 q1.hasSolution();
			 return true;
			 
		} catch(Exception e) {
			
			return false;
			
		}
		
	}
	
	public String consult(String strConsult) {
		
		if( connectProlog() ){
			
			Query q2 = new Query("ancestral(X, jose)");

			Map<String, Term> solution = q2.oneSolution();
			
			if (solution != null) 
				return solution.toString(); 
					
		} 
		
		return "";
		
	}
	
	public void teste() {
		
		Term[] vet = new Term[] {testePl};
		
		Query q1 = new Query("consult", vet);
	    System.out.println("consult " + (q1.hasSolution() ? "succeeded" : "failed"));
		Query q2 = new Query("ancestral(X, jose)");

		Map<String, Term>[] solution = q2.allSolutions();		
		if (solution != null) 
		{	
			for (int i = 0; i < solution.length; i++)
				System.out.println("X = " + solution[i].get("X"));
		}
		
	}

	
}
