/*MAPA 12 x 12*/

/******************************************************************
**
** Dynamic
**
*******************************************************************/

:-dynamic pode_conter_algo/3.
:-dynamic memoria/3.
:-dynamic numOuros/1.
:-dynamic quadrado/3.
:-dynamic posicao/3.
:-dynamic percepcao_passos/2.
:-dynamic percepcao_brisa/2.
:-dynamic percepcao_flash/2.
:-dynamic percepcao_ouro/2.
:-dynamic percepcao_vida/2.
:-dynamic possivelOcupado/3.
:-dynamic tiros/1.
:-dynamic energia/1.
:-dynamic custo/1.
:-dynamic posicaoInimigo1Dano20/2.
:-dynamic inimigo1Dano20/1.
:-dynamic posicaoInimigo2Dano20/2.
:-dynamic inimigo2Dano20/1.
:-dynamic posicaoInimigo1Dano50/2.
:-dynamic inimigo1Dano50/1.
:-dynamic posicaoInimigo2Dano50/2.
:-dynamic inimigo2Dano50/1.
:-dynamic temBuraco/1.
:-dynamic qtdViradas/1.

/******************************************************************
**
** Declarando 
**
*******************************************************************/

quadrado(1, 1, ouro).
quadrado(2, 1, vazio).
quadrado(3, 1, vazio).
quadrado(4, 1, vazio).
quadrado(5, 1, vazio).
quadrado(6, 1, vazio).
quadrado(7, 1, vazio).
quadrado(8, 1, vazio).
quadrado(9, 1, vazio).
quadrado(10, 1, vazio).
quadrado(11, 1, vazio).
quadrado(12, 1, vazio).
quadrado(1, 2, vazio).
quadrado(2, 2, poco).
quadrado(3, 2, vazio).
quadrado(4, 2, vazio).
quadrado(5, 2, vazio).
quadrado(6, 2, teletransporte).
quadrado(7, 2, vazio).
quadrado(8, 2, vazio).
quadrado(9, 2, vazio).
quadrado(10, 2, poco).
quadrado(11, 2, vazio).
quadrado(12, 2, vazio).
quadrado(1, 3, vazio).
quadrado(2, 3, vazio).
quadrado(3, 3, inimigo1dano50).
quadrado(4, 3, vazio).
quadrado(5, 3, vazio).
quadrado(6, 3, vazio).
quadrado(7, 3, vida).
quadrado(8, 3, vazio).
quadrado(9, 3, vazio).
quadrado(10, 3, vazio).
quadrado(11, 3, vazio).
quadrado(12, 3, vazio).
quadrado(1, 4, vazio).
quadrado(2, 4, vazio).
quadrado(3, 4, vazio).
quadrado(4, 4, vazio).
quadrado(5, 4, vazio).
quadrado(6, 4, vazio).
quadrado(7, 4, vazio).
quadrado(8, 4, vazio).
quadrado(9, 4, inimigo1dano20).
quadrado(10, 4, vazio).
quadrado(11, 4, vazio).
quadrado(12, 4, vazio).
quadrado(1, 5, vazio).
quadrado(2, 5, vazio).
quadrado(3, 5, vazio).
quadrado(4, 5, vazio).
quadrado(5, 5, vazio).
quadrado(6, 5, vazio).
quadrado(7, 5, teletransporte).
quadrado(8, 5, vazio).
quadrado(9, 5, vazio).
quadrado(10, 5, vazio).
quadrado(11, 5, poco).
quadrado(12, 5, vazio).
quadrado(1, 6, vida).
quadrado(2, 6, vazio).
quadrado(3, 6, vazio).
quadrado(4, 6, vazio).
quadrado(5, 6, vazio).
quadrado(6, 6, vazio).
quadrado(7, 6, vazio).
quadrado(8, 6, vazio).
quadrado(9, 6, vazio).
quadrado(10, 6, vazio).
quadrado(11, 6, vazio).
quadrado(12, 6, vazio).
quadrado(1, 7, vazio).
quadrado(2, 7, vazio).
quadrado(3, 7, vazio).
quadrado(4, 7, vazio).
quadrado(5, 7, vazio).
quadrado(6, 7, poco).
quadrado(7, 7, vazio).
quadrado(8, 7, ouro).
quadrado(9, 7, vazio).
quadrado(10, 7, vazio).
quadrado(11, 7, vazio).
quadrado(12, 7, vazio).
quadrado(1, 8, vazio).
quadrado(2, 8, vazio).
quadrado(3, 8, vazio).
quadrado(4, 8, vazio).
quadrado(5, 8, vazio).
quadrado(6, 8, inimigo2dano50).
quadrado(7, 8, vazio).
quadrado(8, 8, poco).
quadrado(9, 8, vazio).
quadrado(10, 8, vazio).
quadrado(11, 8, vazio).
quadrado(12, 8, vazio).
quadrado(1, 9, vazio).
quadrado(2, 9, vazio).
quadrado(3, 9, inimigo2dano20).
quadrado(4, 9, vazio).
quadrado(5, 9, vazio).
quadrado(6, 9, vazio).
quadrado(7, 9, vazio).
quadrado(8, 9, vazio).
quadrado(9, 9, vazio).
quadrado(10, 9, vazio).
quadrado(11, 9, teletransporte).
quadrado(12, 9, vazio).
quadrado(1, 10, poco).
quadrado(2, 10, vazio).
quadrado(3, 10, vazio).
quadrado(4, 10, vazio).
quadrado(5, 10, vazio).
quadrado(6, 10, vazio).
quadrado(7, 10, vazio).
quadrado(8, 10, vazio).
quadrado(9, 10, poco).
quadrado(10, 10, vazio).
quadrado(11, 10, vazio).
quadrado(12, 10, vazio).
quadrado(1, 11, vazio).
quadrado(2, 11, vazio).
quadrado(3, 11, vazio).
quadrado(4, 11, poco).
quadrado(5, 11, vazio).
quadrado(6, 11, vazio).
quadrado(7, 11, vazio).
quadrado(8, 11, vazio).
quadrado(9, 11, vazio).
quadrado(10, 11, vazio).
quadrado(11, 11, vazio).
quadrado(12, 11, ouro).
quadrado(1, 12, eu).
quadrado(2, 12, vazio).
quadrado(3, 12, vazio).
quadrado(4, 12, vazio).
quadrado(5, 12, vazio).
quadrado(6, 12, vazio).
quadrado(7, 12, teletransporte).
quadrado(8, 12, vazio).
quadrado(9, 12, vazio).
quadrado(10, 12, vida).
quadrado(11, 12, vazio).
quadrado(12, 12, vazio).

memoria(1, 1, nao).
memoria(2, 1, nao).
memoria(3, 1, nao).
memoria(4, 1, nao).
memoria(5, 1, nao).
memoria(6, 1, nao).
memoria(7, 1, nao).
memoria(8, 1, nao).
memoria(9, 1, nao).
memoria(10, 1, nao).
memoria(11, 1, nao).
memoria(12, 1, nao).
memoria(1, 2, nao).
memoria(2, 2, nao).
memoria(3, 2, nao).
memoria(4, 2, nao).
memoria(5, 2, nao).
memoria(6, 2, nao).
memoria(7, 2, nao).
memoria(8, 2, nao).
memoria(9, 2, nao).
memoria(10, 2, nao).
memoria(11, 2, nao).
memoria(12, 2, nao).
memoria(1, 3, nao).
memoria(2, 3, nao).
memoria(3, 3, nao).
memoria(4, 3, nao).
memoria(5, 3, nao).
memoria(6, 3, nao).
memoria(7, 3, nao).
memoria(8, 3, nao).
memoria(9, 3, nao).
memoria(10, 3, nao).
memoria(11, 3, nao).
memoria(12, 3, nao).
memoria(1, 4, nao).
memoria(2, 4, nao).
memoria(3, 4, nao).
memoria(4, 4, nao).
memoria(5, 4, nao).
memoria(6, 4, nao).
memoria(7, 4, nao).
memoria(8, 4, nao).
memoria(9, 4, nao).
memoria(10, 4, nao).
memoria(11, 4, nao).
memoria(12, 4, nao).
memoria(1, 5, nao).
memoria(2, 5, nao).
memoria(3, 5, nao).
memoria(4, 5, nao).
memoria(5, 5, nao).
memoria(6, 5, nao).
memoria(7, 5, nao).
memoria(8, 5, nao).
memoria(9, 5, nao).
memoria(10, 5, nao).
memoria(11, 5, nao).
memoria(12, 5, nao).
memoria(1, 6, nao).
memoria(2, 6, nao).
memoria(3, 6, nao).
memoria(4, 6, nao).
memoria(5, 6, nao).
memoria(6, 6, nao).
memoria(7, 6, nao).
memoria(8, 6, nao).
memoria(9, 6, nao).
memoria(10, 6, nao).
memoria(11, 6, nao).
memoria(12, 6, nao).
memoria(1, 7, nao).
memoria(2, 7, nao).
memoria(3, 7, nao).
memoria(4, 7, nao).
memoria(5, 7, nao).
memoria(6, 7, nao).
memoria(7, 7, nao).
memoria(8, 7, nao).
memoria(9, 7, nao).
memoria(10, 7, nao).
memoria(11, 7, nao).
memoria(12, 7, nao).
memoria(1, 8, nao).
memoria(2, 8, nao).
memoria(3, 8, nao).
memoria(4, 8, nao).
memoria(5, 8, nao).
memoria(6, 8, nao).
memoria(7, 8, nao).
memoria(8, 8, nao).
memoria(9, 8, nao).
memoria(10, 8, nao).
memoria(11, 8, nao).
memoria(12, 8, nao).
memoria(1, 9, nao).
memoria(2, 9, nao).
memoria(3, 9, nao).
memoria(4, 9, nao).
memoria(5, 9, nao).
memoria(6, 9, nao).
memoria(7, 9, nao).
memoria(8, 9, nao).
memoria(9, 9, nao).
memoria(10, 9, nao).
memoria(11, 9, nao).
memoria(12, 9, nao).
memoria(1, 10, nao).
memoria(2, 10, nao).
memoria(3, 10, nao).
memoria(4, 10, nao).
memoria(5, 10, nao).
memoria(6, 10, nao).
memoria(7, 10, nao).
memoria(8, 10, nao).
memoria(9, 10, nao).
memoria(10, 10, nao).
memoria(11, 10, nao).
memoria(12, 10, nao).
memoria(1, 11, nao).
memoria(2, 11, nao).
memoria(3, 11, nao).
memoria(4, 11, nao).
memoria(5, 11, nao).
memoria(6, 11, nao).
memoria(7, 11, nao).
memoria(8, 11, nao).
memoria(9, 11, nao).
memoria(10, 11, nao).
memoria(11, 11, nao).
memoria(12, 11, nao).
memoria(1, 12, sim).
memoria(2, 12, nao).
memoria(3, 12, nao).
memoria(4, 12, nao).
memoria(5, 12, nao).
memoria(6, 12, nao).
memoria(7, 12, nao).
memoria(8, 12, nao).
memoria(9, 12, nao).
memoria(10, 12, nao).
memoria(11, 12, nao).
memoria(12, 12, nao).

posicao(1, 12, norte).

tiros(5).

energia(100).

custo(0).

temBuraco(0).

numOuros(0).

pode_conter_algo(1, 12, nao).

qtdViradas(0).

inimigo1Dano20(100).
inimigo2Dano20(100).
inimigo1Dano50(100).
inimigo2Dano50(100).

/******************************************************************
**
** Adjacencias
**
*******************************************************************/

adjacente(X, Y, XX, Y) :- XX is X + 1, XX < 13.
adjacente(X, Y, XX, Y) :- XX is X - 1, XX > 0.
adjacente(X, Y, X, YY) :- YY is Y + 1, YY < 13.
adjacente(X, Y, X, YY) :- YY is Y - 1, YY > 0.

adjacente(X, Y, XX, Y, Z) :- Z == 0, XX is X + 1, XX < 13.
adjacente(X, Y, XX, Y, Z) :- Z == 1, XX is X - 1, XX > 0.
adjacente(X, Y, X, YY, Z) :- Z == 2, YY is Y + 1, YY < 13.
adjacente(X, Y, X, YY, Z) :- Z == 3, YY is Y - 1, YY > 0.

/******************************************************************
**
** Percepcoes na Posicao
**
*******************************************************************/

percepcao_passos(X, Y) :- posicao(X, Y, _), adjacente(X, Y, XX, YY), (quadrado(XX, YY, inimigo1dano20) ; quadrado(XX, YY, inimigo2dano20) ; 
			  quadrado(XX, YY, inimigo1dano50) ; quadrado(XX, YY, inimigo2dano50)), assert(pode_conter_algo(XX, YY, poco)).
			 
/******************************************************************
**
** Percepcão de brisa
**
*******************************************************************/			 
 
percepcao_brisa(X, Y) :- posicao(X, Y, _), 
					retract(temBuraco(_)), assert(temBuraco(0)), 
					adjacente(X, Y, XX, YY, 0),  memoria(XX, YY, nao),
					quadrado(XX, YY, poco),
					retract(temBuraco(_)), assert(temBuraco(1)).
				    
percepcao_brisa(X, Y) :- posicao(X, Y, _), temBuraco(B), B == 0, 
					retract(temBuraco(_)), assert(temBuraco(0)), 
					adjacente(X, Y, XX, YY, 1),  memoria(XX, YY, nao),
					quadrado(XX, YY, poco),
					retract(temBuraco(_)), assert(temBuraco(1)).

percepcao_brisa(X, Y) :- posicao(X, Y, _), temBuraco(B), B == 0, 
					retract(temBuraco(_)), assert(temBuraco(0)), 
					adjacente(X, Y, XX, YY, 2),  memoria(XX, YY, nao),
					quadrado(XX, YY, poco),
					retract(temBuraco(_)), assert(temBuraco(1)).
				    
percepcao_brisa(X, Y) :- posicao(X, Y, _), temBuraco(B), B == 0, 
					retract(temBuraco(_)), assert(temBuraco(0)), 
					adjacente(X, Y, XX, YY, 3),  memoria(XX, YY, nao),
					quadrado(XX, YY, poco),
					retract(temBuraco(_)), assert(temBuraco(1)).							    				  
				    
				    
				    
				    
percepcao_brisa(X, Y) :- temBuraco(B), B == 1, posicao(X, Y, _), 
					adjacente(X, Y, XX, YY, 0),  memoria(XX, YY, nao),
					\+pode_conter_algo(XX, YY, nao),
				    assert(pode_conter_algo(XX, YY, poco)).
				    
percepcao_brisa(X, Y) :- temBuraco(B), B == 1, posicao(X, Y, _), 
					adjacente(X, Y, XX, YY, 1),  memoria(XX, YY, nao),
					\+pode_conter_algo(XX, YY, nao),
				    assert(pode_conter_algo(XX, YY, poco)).
				    
percepcao_brisa(X, Y) :- temBuraco(B), B == 1, posicao(X, Y, _), 
					adjacente(X, Y, XX, YY, 2),  memoria(XX, YY, nao),
					\+pode_conter_algo(XX, YY, nao),
				    assert(pode_conter_algo(XX, YY, poco)).
				    
percepcao_brisa(X, Y) :- temBuraco(B), B == 1, posicao(X, Y, _), 
					adjacente(X, Y, XX, YY, 3),  memoria(XX, YY, nao),
					\+pode_conter_algo(XX, YY, nao),
				    assert(pode_conter_algo(XX, YY, poco)).
				    
				    
				    
				    
percepcao_brisa(X, Y) :- temBuraco(B), B == 0, posicao(X, Y, _), 
					adjacente(X, Y, XX, YY, 0),  memoria(XX, YY, nao),
				    assert(pode_conter_algo(XX, YY, nao)).
				    
percepcao_brisa(X, Y) :- temBuraco(B), B == 0, posicao(X, Y, _), 
					adjacente(X, Y, XX, YY, 1),  memoria(XX, YY, nao),
				    assert(pode_conter_algo(XX, YY, nao)).
				    
percepcao_brisa(X, Y) :- temBuraco(B), B == 0, posicao(X, Y, _), 
					adjacente(X, Y, XX, YY, 2),  memoria(XX, YY, nao),
				    assert(pode_conter_algo(XX, YY, nao)).
				    
percepcao_brisa(X, Y) :- temBuraco(B), B == 0, posicao(X, Y, _), 
					adjacente(X, Y, XX, YY, 3),  memoria(XX, YY, nao),
				    assert(pode_conter_algo(XX, YY, nao)).

/******************************************************************
**
** Percepcoes na Posicao
**
*******************************************************************/

percepcao_flash(X, Y) :- posicao(X, Y, _), adjacente(X, Y, XX, YY), quadrado(XX, YY, teletransporte), assert(pode_conter_algo(XX, YY, teletransporte)).

percepcao_vida(X, Y) :- posicao(X, Y, _), quadrado(X, Y, vida).

/******************************************************************
**
** AÇÕES - Mover para a frente
**
*******************************************************************/

mover_para_frente(X, YY) :- posicao(X, Y, P), P = norte,  Y > 1, YY is Y - 1,
			     custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
         	     	     retract(posicao(_, _, _)), assert(posicao(X, YY, P)),
		     	     retract(memoria(X, YY, _)), assert(memoria(X, YY, sim)), !.
		 
mover_para_frente(X, YY) :- posicao(X, Y, P), P = sul,  Y < 12, YY is Y + 1, 
			     custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
         	     	     retract(posicao(_, _, _)), assert(posicao(X, YY, P)),
		     	     retract(memoria(X, YY, _)), assert(memoria(X, YY, sim)), !.

mover_para_frente(XX, Y) :- posicao(X, Y, P), P = leste,  X < 12, XX is X + 1, 
			     custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
        	     	     retract(posicao(_, _, _)), assert(posicao(XX, Y, P)),
		     	     retract(memoria(XX, Y, _)), assert(memoria(XX, Y, sim)), !.

mover_para_frente(XX, Y) :- posicao(X, Y, P), P = oeste,  X > 1, XX is X - 1, 
			     custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
         	     	     retract(posicao(_, _, _)), assert(posicao(XX, Y, P)),
		     	     retract(memoria(XX, Y, _)), assert(memoria(XX, Y, sim)), !.
		     	     
/******************************************************************
**
** AÇÕES - Retorna posicao da frente
**
*******************************************************************/

retorna_posicao_frente(XX, YY) :- posicao(X, Y, P), P = norte,  Y > 1, YY is Y - 1, XX is X,!.
		 
retorna_posicao_frente(XX, YY) :- posicao(X, Y, P), P = sul,  Y < 12, YY is Y + 1, XX is X,!.

retorna_posicao_frente(XX, YY) :- posicao(X, Y, P), P = leste,  X < 12, XX is X + 1, YY is Y,!.

retorna_posicao_frente(XX, YY) :- posicao(X, Y, P), P = oeste,  X > 1, XX is X - 1, YY is Y,!.
         	     
/******************************************************************
**
** AÇÕES - Virar a direita
**
*******************************************************************/

virar_a_direita :- posicao(X, Y, norte), 
		   custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
	 	   retract(posicao(_, _, _)), assert(posicao(X, Y, leste)),!.

virar_a_direita :- posicao(X, Y, oeste), 
		   custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
		   retract(posicao(_, _, _)), assert(posicao(X, Y, norte)),!.

virar_a_direita :- posicao(X, Y, sul), 
		   custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
		   retract(posicao(_, _, _)), assert(posicao(X, Y, oeste)),!.

virar_a_direita :- posicao(X, Y, leste), 
		   custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
		   retract(posicao(_, _, _)), assert(posicao(X, Y, sul)),!.
				   
/******************************************************************
**
** AÇÕES - Pegar Ouro
**
*******************************************************************/

pegar_ouro :- posicao(PX, PY, _), quadrado(OX, OY, ouro), PX == OX, PY == OY,
				retract(quadrado(PX, PY, _)), assert(quadrado(PX, PY,vazio)),
				custo(C), CC is C + 1000, retract(custo(_)), assert(custo(CC)), 
				numOuros(O), OO is O + 1, retract(numOuros(_)), assert(numOuros(OO)),!.

/******************************************************************
**
** AÇÕES - Ganhar jogo
**
*******************************************************************/

ganhar_jogo :- numOuros(3).

/******************************************************************
**
** AÇÕES - Mostrar inimigo morto
**
*******************************************************************/

inimigo_morreu(X,Y,NF) :- NF > 0, Y > 0, X > 0,!.

inimigo_morreu(X,Y,NF) :- NF < 0,  quadrado(PX, PY, inimigo1dano20), PX == X, PY == Y,
						  retract(quadrado(PX, PY, inimigo1dano20)), assert(quadrado(PX, PY, vazio)),
						  write('grito'),!.

inimigo_morreu(X,Y,NF) :- NF < 0,  quadrado(PX, PY, inimigo2dano20), PX == X, PY == Y,
						  retract(quadrado(PX, PY, inimigo2dano20)), assert(quadrado(PX, PY, vazio)),
						  write('grito'),!.

inimigo_morreu(X,Y,NF) :- NF < 0,  quadrado(PX, PY, inimigo1dano50), PX == X, PY == Y,
						  retract(quadrado(PX, PY, inimigo1dano50)), assert(quadrado(PX, PY, vazio)),
						  write('grito'),!.

inimigo_morreu(X,Y,NF) :- NF < 0,  quadrado(PX, PY, inimigo2dano50), PX == X, PY == Y,
						  retract(quadrado(PX, PY, inimigo2dano50)), assert(quadrado(PX, PY, vazio)),
						  write('grito'),!.
				
/******************************************************************
**
** AÇÕES - Diminuir energia do inimigo 
**
*******************************************************************/

diminuir_energia_inimigo(X,Y,FA) :- quadrado(PX, PY, inimigo1dano20), PX == X, PY == Y,
									inimigo1Dano20(FATUAL), NF is FATUAL - FA, 
									inimigo_morreu(X,Y,NF),
									retract(inimigo1Dano20(_)), assert(inimigo1Dano20(NF)),!.

diminuir_energia_inimigo(X,Y,FA) :- quadrado(PX, PY, inimigo2dano20), PX == X, PY == Y,
									inimigo2Dano20(FATUAL), NF is FATUAL - FA, 
									inimigo_morreu(X,Y,NF),
									retract(inimigo2Dano20(_)), assert(inimigo2Dano20(NF)),!.

diminuir_energia_inimigo(X,Y,FA) :- quadrado(PX, PY, inimigo1dano50), PX == X, PY == Y,
									inimigo1Dano50(FATUAL), NF is FATUAL - FA, 
									inimigo_morreu(X,Y,NF),
									retract(inimigo1Dano50(_)), assert(inimigo1Dano50(NF)),!.

diminuir_energia_inimigo(X,Y,FA) :- quadrado(PX, PY, inimigo2dano50), PX == X, PY == Y,
									inimigo2Dano50(FATUAL), NF is FATUAL - FA, 
									inimigo_morreu(X,Y,NF),
									retract(inimigo2Dano50(_)), assert(inimigo2Dano50(NF)),!.

/******************************************************************
**
** AÇÕES - Atirar
**
*******************************************************************/

atirar :-   posicao(X, Y, _), existe_Inimigo_Posicao(X, Y),
			random(20, 51, FA), diminuir_energia_inimigo(X,Y,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.
			
atirar :-   posicao(X, Y, norte), PY is Y - 1, existe_Inimigo_Posicao(X, PY),
			random(20, 51, FA), diminuir_energia_inimigo(X,PY,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.
			
atirar :-   posicao(X, Y, sul), PY is Y + 1, existe_Inimigo_Posicao(X, PY),
			random(20, 51, FA), diminuir_energia_inimigo(X,PY,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.	
			
atirar :-   posicao(X, Y, leste), PX is X + 1, existe_Inimigo_Posicao(PX, Y),
			random(20, 51, FA), diminuir_energia_inimigo(PX,Y,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.	
			
atirar :-   posicao(X, Y, oeste), PX is X - 1, existe_Inimigo_Posicao(PX, Y),
			random(20, 51, FA), diminuir_energia_inimigo(PX,Y,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), (energia(EE)),!.	
         
/******************************************************************
**
** Funções Genéricas
**
*******************************************************************/

imprime_posicao(X, Y) :-  write('X = '), write(X), write(', Y = '), write(Y),!.

/******************************************************************
**
** QtdViradas
**
*******************************************************************/

add_qtdVirada :- qtdViradas(X), XX is X + 1,
				retract(qtdViradas(_)), assert(qtdViradas(XX)),!.
remove_qtdVirada :- qtdViradas(X), XX is X - 1,
				retract(qtdViradas(_)), assert(qtdViradas(XX)),!.
reseta_qtdVirada :- XX is 0,
				retract(qtdViradas(_)), assert(qtdViradas(XX)),!.

/******************************************************************
**
** É casa boa
**
*******************************************************************/

eh_casa_boa(X, Y) :- memoria(X, Y, nao), pode_conter_algo(X, Y, nao),!. 

/******************************************************************
**
** Melhor movimento
**
*******************************************************************/

melhor_movimento(R) :- ganhar_jogo, R = 'ganhou', !.
melhor_movimento(R) :- pegar_ouro, R = 'pegou ouro', !.

melhor_movimento(_) :- posicao(X, Y, _), percepcao_brisa(X, Y), pegar_ouro.
melhor_movimento(R) :- retorna_posicao_frente(X, Y), eh_casa_boa(X, Y), pode_conter_algo(X, Y, nao), mover_para_frente(_, _), R='andar para frente', reseta_qtdVirada,!.
melhor_movimento(R) :- retorna_posicao_frente(X, Y), qtdViradas(Q), Q > 3, pode_conter_algo(X, Y, nao), mover_para_frente(_, _), R='andar para frente', reseta_qtdVirada,!.


melhor_movimento(R) :- virar_a_direita, R = 'virou a direita', add_qtdVirada,!.