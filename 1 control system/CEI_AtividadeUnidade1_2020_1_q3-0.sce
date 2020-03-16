
clear; //Apaga variáveis

t = 0:0.01:0.6; //Tempo de 0 a 10seg com passo de 0.01seg

// a

a_k = 10;                                //Ganho
a_p = 10;                                //Polo
a_tau = 1/a_p;                           //Constante de tempo
a_t = 0:0.01:1;                          //Tempo de 0 a 10seg com passo de 0.01seg
a_c = (a_k/a_p)*( 1 - exp(-a_t/a_tau) ); //Dinâmica do sistema (Resposta ao degrau)

figure(0);                                                 //Instancia uma figura
clf();                                                     //Limpa a janela gráfica (figura em branco)
plot(a_t,a_c);                                             //Plota a dinâmica do sistema 
title('Resposta ao Degrau | G(s) = 10/s+10','fontsize',3); //Define o título
xlabel('t [s]','fontsize',3);                              //Define descrição do eixo x
ylabel('c','fontsize',3);                                  //Define descrição do eixo y
xgrid;

// b

b_k = 0.2;                               //Ganho
b_p = 3;                                 //Polo
b_tau = 1/b_p;                           //Constante de tempo
b_t = 0:0.01:2;                          //Tempo de 0 a 10seg com passo de 0.01seg
b_c = (b_k/b_p)*( 1 - exp(-b_t/b_tau) ); //Dinâmica do sistema (Resposta ao degrau)

figure(1);                                                 //Instancia uma figura
clf();                                                     //Limpa a janela gráfica (figura em branco)
plot(b_t,b_c);                                             //Plota a dinâmica do sistema 
title('Resposta ao Degrau | G(s) = 0,2/s+3','fontsize',3); //Define o título
xlabel('t [s]','fontsize',3);                              //Define descrição do eixo x
ylabel('c','fontsize',3);                                  //Define descrição do eixo y
xgrid;

// c

c_k = 4;                                 //Ganho
c_p = 100;                               //Polo
c_tau = 1/c_p;                           //Constante de tempo
c_t = 0:0.001:0.1;                      //Tempo de 0 a 10seg com passo de 0.01seg
c_c = (c_k/c_p)*( 1 - exp(-c_t/c_tau) ); //Dinâmica do sistema (Resposta ao degrau)

figure(2);                                                 //Instancia uma figura
clf();                                                     //Limpa a janela gráfica (figura em branco)
plot(c_t,c_c);                                             //Plota a dinâmica do sistema 
title('Resposta ao Degrau | G(s) = 4/s+100','fontsize',3); //Define o título
xlabel('t [s]','fontsize',3);                              //Define descrição do eixo x
ylabel('c','fontsize',3);                                  //Define descrição do eixo y
xgrid;

// d

d_k = 2.3;                               //Ganho
d_p = 0.1;                               //Polo
d_tau = 1/d_p;                           //Constante de tempo
d_t = 0:1:100;                           //Tempo de 0 a 10seg com passo de 0.01seg
d_c = (d_k/d_p)*( 1 - exp(-d_t/d_tau) ); //Dinâmica do sistema (Resposta ao degrau)

figure(3);                                                   //Instancia uma figura
clf();                                                       //Limpa a janela gráfica (figura em branco)
plot(d_t,d_c);                                               //Plota a dinâmica do sistema 
title('Resposta ao Degrau | G(s) = 2,3/s+0,1','fontsize',3); //Define o título
xlabel('t [s]','fontsize',3);                                //Define descrição do eixo x
ylabel('c','fontsize',3);                                    //Define descrição do eixo y
xgrid;

// e

e_k = 3.2;                               //Ganho
e_p = 4;                                 //Polo
e_tau = 1/e_p;                           //Constante de tempo
e_t = 0:0.01:2;                          //Tempo de 0 a 10seg com passo de 0.01seg
e_c = (e_k/e_p)*( 1 + exp(-e_t/e_tau) ); //Dinâmica do sistema (Resposta ao degrau)

figure(4);                                                 //Instancia uma figura
clf();                                                     //Limpa a janela gráfica (figura em branco)
plot(e_t,e_c);                                             //Plota a dinâmica do sistema 
title('Resposta ao Degrau | G(s) = 3,2/s-4','fontsize',3); //Define o título
xlabel('t [s]','fontsize',3);                              //Define descrição do eixo x
ylabel('c','fontsize',3);                                  //Define descrição do eixo y
xgrid;
