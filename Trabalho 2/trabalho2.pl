/*MAPA 24 x 24*/

/******************************************************************
**
** Dynamic
**
*******************************************************************/

:-dynamic posicao/3.
:-dynamic ouro/2.
:-dynamic energia/1.
:-dynamic posicaoInimigo1Dano20/2.
:-dynamic inimigo1Dano20/2.
:-dynamic posicaoInimigo2Dano20/2.
:-dynamic inimigo2Dano20/2.

/******************************************************************
**
** Declarando 
**
*******************************************************************/

posicao(1,1, norte).

ouro(0, 0).

energia(100).

posicaoInimigo1Dano20(0, 0).
inimigo1Dano20(20, 100).

posicaoInimigo2Dano20(0, 0).
inimigo2Dano20(50, 100).


/******************************************************************
**
** Funções Get - Posição Inimigos
**
*******************************************************************/

getPosicaoInimigo(X, TYPE) :- X == 1, TYPE == 1, posicaoInimigo1Dano20(PX, PY), write('X = '), write(PX), write(', Y = '), write(PY),!.

getPosicaoInimigo(X, TYPE) :- X == 2, TYPE == 1, posicaoInimigo2Dano20(PX, PY), write('X = '), write(PX), write(', Y = '), write(PY),!.

/******************************************************************
**
** Funções Existe - Existe Inimigo na Posição X,Y
**
*******************************************************************/

existe_Inimigo_Posicao(X, Y) :- posicaoInimigo1Dano20(PX, PY), PX == X, PY == Y,!.

existe_Inimigo_Posicao(X, Y) :- posicaoInimigo2Dano20(PX, PY), PX == X, PY == Y,!.

/******************************************************************
**
** Iniciar jogo
**
*******************************************************************/

iniciar_jogo :- gerar_Posicao_Ouro, gerar_Posicao_Inimigo(1,1), gerar_Posicao_Inimigo(2,1),!.

/******************************************************************
**
** Inicializando valores
**
*******************************************************************/

recuperar_energia :- retract(energia(_)), assert(energia(100)),!.

recuperar_inimigo1 :- retract(inimigo1Dano20(_, _)), assert(inimigo1Dano20(10, 100)),!.

/******************************************************************
**
** Gerar posições
**
*******************************************************************/

gerar_Posicao_Ouro :- random(0,24,X), random(0,24,Y), retract(ouro(_,_)), assert(ouro(X, Y)).

gerar_Posicao_Inimigo(X, TYPE) :- X == 1, TYPE == 1, random(0,24,PX), random(0,24,PY), retract(posicaoInimigo1Dano20(_,_)), assert(posicaoInimigo1Dano20(PX, PY)),!.

gerar_Posicao_Inimigo(X, TYPE) :- X == 2, TYPE == 1, random(0,24,PX), random(0,24,PY), retract(posicaoInimigo2Dano20(_,_)), assert(posicaoInimigo2Dano20(PX, PY)),!.


/******************************************************************
**
** AÇÕES - Mover para a frente
**
*******************************************************************/

mover_para_frente :- posicao(X,Y,P), P = norte,  Y > 0, YY is Y - 1,
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
         	     retract(posicao(_,_,_)), assert(posicao(X, YY, P)),!.
		 
mover_para_frente :- posicao(X,Y,P), P = sul,  Y < 24, YY is Y + 1, 
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
         	     retract(posicao(_,_,_)), assert(posicao(X, YY, P)),!.

mover_para_frente :- posicao(X,Y,P), P = leste,  X > 0, XX is X - 1, 
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

pegar_objeto :- posicao(PX, PY, _), ouro(OX, OY), PX == OX, PY == OY,
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
