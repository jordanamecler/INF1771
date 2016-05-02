/*MAPA 24 x 24*/

/******************************************************************
**
** Dynamic
**
*******************************************************************/

:-dynamic posicao/3.
:-dynamic ouro/2.
:-dynamic energia/1.
:-dynamic posicaoInimigo1/2.
:-dynamic inimigo1/2.
:-dynamic posicaoInimigo2/2.
:-dynamic inimigo2/2.
:-dynamic posicaoInimigo3/2.
:-dynamic inimigo3/1.

/******************************************************************
**
** Declarando 
**
*******************************************************************/

posicao(1,1, norte).

ouro(0, 0).

energia(100).

posicaoInimigo1(0, 0).
inimigo1(20, 100).

posicaoInimigo2(0, 0).
inimigo2(50, 100).

posicaoInimigo3(0, 0).
inimigo3(100).

/******************************************************************
**
** Funções Get - Inimigos
**
*******************************************************************/



/******************************************************************
**
** Iniciar jogo
**
*******************************************************************/

iniciar_jogo :- gerar_Posicao_Ouro, gerar_Posicao_Inimigo1, gerar_Posicao_Inimigo2, gerar_Posicao_Inimigo3,!.

/******************************************************************
**
** Inicializando valores
**
*******************************************************************/

recuperar_energia :- retract(energia(_)), assert(energia(100)),!.

recuperar_inimigo1 :- retract(inimigo1(_, _)), assert(inimigo1(10, 100)),!.

/******************************************************************
**
** Gerar posições
**
*******************************************************************/

gerar_Posicao_Ouro :- random(1,24,X), random(1,24,Y), retract(ouro(_,_)), assert(ouro(X, Y)).

gerar_Posicao_Inimigo1 :- random(1,24,X), random(1,24,Y), retract(posicaoInimigo1(_,_)), assert(posicaoInimigo1(X, Y)).

gerar_Posicao_Inimigo2 :- random(1,24,X), random(1,24,Y), retract(posicaoInimigo2(_,_)), assert(posicaoInimigo2(X, Y)).

gerar_Posicao_Inimigo3 :- random(1,24,X), random(1,24,Y), retract(posicaoInimigo3(_,_)), assert(posicaoInimigo3(X, Y)).

/******************************************************************
**
** AÇÕES - Mover para a frente
**
*******************************************************************/

mover_para_frente :- posicao(X,Y,P), P = norte,  Y > 1, YY is Y - 1,
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
         	     retract(posicao(_,_,_)), assert(posicao(X, YY, P)),!.
		 
mover_para_frente :- posicao(X,Y,P), P = sul,  Y < 24, YY is Y + 1, 
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
         	     retract(posicao(_,_,_)), assert(posicao(X, YY, P)),!.

mover_para_frente :- posicao(X,Y,P), P = leste,  X > 1, XX is X - 1, 
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
        	     retract(posicao(_,_,_)), assert(posicao(XX, Y, P)),!.

mover_para_frente :- posicao(X,Y,P), P = oeste,  X < 24, XX is X + 1, 
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
         	     retract(posicao(_,_,_)), assert(posicao(XX, Y, P)),!.
         	     
/******************************************************************
**
** AÇÕES - Virar a direita
**
*******************************************************************/

virar_a_direita :- posicao(X,Y, norte), 
				   energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
	 			   retract(posicao(_,_,_)), assert(posicao(X, Y, leste)),!.

virar_a_direita :- posicao(X,Y, oeste), 
				   energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
				   retract(posicao(_,_,_)), assert(posicao(X, Y, norte)),!.

virar_a_direita :- posicao(X,Y, sul), 
				   energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
			  	  retract(posicao(_,_,_)), assert(posicao(X, Y, oeste)),!.

virar_a_direita :- posicao(X,Y, leste), 
				   energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
				   retract(posicao(_,_,_)), assert(posicao(X, Y, sul)),!.
				   
/******************************************************************
**
** AÇÕES - Pegar Objeto
**
*******************************************************************/

pegar_objeto :- energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
				posicao(PX, PY, _), ouro(OX, OY), PX == OX, PY == OY,
				energia(E2), EE2 is E2 + 1000, retract(energia(_)), assert(energia(EE2)),!.
				
/******************************************************************
**
** AÇÕES - Atirar
**
*******************************************************************/

atirar :- energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.
				
/******************************************************************
**
** AÇÕES - Subir
**
*******************************************************************/				

subir :- posicao(X, Y, _), X == 1, Y == 1,
         energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),!.
