
clear; //Apaga variáveis

t = 0:0.01:1; //Tempo de 0 a 10seg com passo de 0.01seg

// a

a_k = 10;                              //Ganho
a_p = 10;                              //Polo
a_tau = 1/a_p;                         //Constante de tempo
a_c = (a_k/a_p)*( 1 - exp(-t/a_tau) ); //Dinâmica do sistema (Resposta ao degrau)

// b

b_k = 0.2;                             //Ganho
b_p = 3;                               //Polo
b_tau = 1/b_p;                         //Constante de tempo
b_c = (b_k/b_p)*( 1 - exp(-t/b_tau) ); //Dinâmica do sistema (Resposta ao degrau)

// c

c_k = 4;                               //Ganho
c_p = 100;                             //Polo
c_tau = 1/c_p;                         //Constante de tempo
c_c = (c_k/c_p)*( 1 - exp(-t/c_tau) ); //Dinâmica do sistema (Resposta ao degrau)


// d

d_k = 2.3;                             //Ganho
d_p = 0.1;                             //Polo
d_tau = 1/d_p;                         //Constante de tempo
d_c = (d_k/d_p)*( 1 - exp(-t/d_tau) ); //Dinâmica do sistema (Resposta ao degrau)

// e

e_k = 3.2;                             //Ganho
e_p = 4;                               //Polo
e_tau = 1/e_p;                         //Constante de tempo
e_c = (e_k/e_p)*( 1 + exp(-t/e_tau) ); //Dinâmica do sistema (Resposta ao degrau)

figure(0);                                                         //Instancia uma figura
clf();                                                             //Limpa a janela gráfica (figura em branco)
plot(t,a_c,'-r',t,b_c,'-g',t,c_c,'-b',t,d_c,'-k',t,e_c,'-c'); //Plota a dinâmica do sistema 
title('Resposta ao Degrau | G(s)','fontsize',3);                   //Define o título
xlabel('t [s]','fontsize',3);                                      //Define descrição do eixo x
ylabel('c','fontsize',3);                                          //Define descrição do eixo y
legend('G(s) = 10/(s+10)','G(s) = 0,2/(s+3)','G(s) = 4/(s+100)','G(s) = 2,3/(s+0,1)','G(s) = 3,2/(s-4)');
xgrid;
