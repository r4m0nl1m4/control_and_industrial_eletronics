
clear; //Apaga variáveis

//Função de transferência

ohmega_n = 4;                              //Frequência Natural Não Armotecida
ksi = 0.5;                                 //Coeficiente de Armotecimento 
num = ohmega_n^2;                          //Numerador
s = poly(0, 's');                          //poly(): Função para definir polinômios. Permite criar polinômios, no caso, com a variável s
den = (s^2+2*ksi*ohmega_n*s+ohmega_n^2);   //Denominador
Gmf = syslin([],num,den);                    //cria função linear
s1 = -ksi*ohmega_n+ohmega_n*sqrt(ksi^2-1); //polo 1
s2 = -ksi*ohmega_n-ohmega_n*sqrt(ksi^2-1); //polo 2

//Diagrama de polos e zeros

figure(0); //Instancia uma figura
clf();     //Limpa a janela gráfica (figura em branco)
plzr(Gmf); //Plota diagrama de polos e zeros

//Resposta ao degrau (Sistema subamortecido)

R = 1;                 //Entrada degrau
t = 0:0.01:2.5;        //Tempo de 0 a 10seg com passo de 0.01seg
A = sqrt(1-ksi^2);
B = -(ksi*ohmega_n*t);
C = exp(B);
D = (A/ksi);
E = atan(D);
ohmega_d = ohmega_n.*A;
F = sin(ohmega_d.*t+E);
G = (C/A);
Y = R*(1-G.*F);

ts5 = 3/(ksi*ohmega_n);
ts2 = 4/(ksi*ohmega_n);
Mp = exp(-ksi*%pi/A)*100;

//Dinâmica da tensão do resistor

figure(1);                                        //Instancia uma figura
clf();                                            //Limpa a janela gráfica (figura em branco)
plot(t,Y);                                        //Plota a dinâmica do sistema 
title('Dinâmica do sistema | Y(t)','fontsize',3); //Define o título
xlabel('t [s]','fontsize',3);                     //Define descrição do eixo x
ylabel('Y','fontsize',3);                         //Define descrição do eixo y
xgrid;
