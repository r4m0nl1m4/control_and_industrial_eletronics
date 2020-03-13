
clear; //Apaga variáveis

//Características elétricas

R = 10;          //Resistência
L = 1.1*10^(-3); //Indutância
C = 10^(-3);     //Capacitância

//Função de transferência

ohmega_n = sqrt(1/(L*C));                  //Frequência Natural Não Armotecida
ksi = 1/(2*C*R*ohmega_n);                  //Coeficiente de Armotecimento 
num = ohmega_n^2;                          //Numerador
s = poly(0, 's');                          //poly(): Função para definir polinômios. Permite criar polinômios, no caso, com a variável s
den = (s^2+2*ksi*ohmega_n*s+ohmega_n^2);   //Denominador
h = syslin([],num,den);                    //cria função linear
s1 = -ksi*ohmega_n+ohmega_n*sqrt(ksi^2-1); //polo 1
s2 = -ksi*ohmega_n-ohmega_n*sqrt(ksi^2-1); //polo 2

//Diagrama de polos e zeros

figure(0); //Instancia uma figura
clf();     //Limpa a janela gráfica (figura em branco)
plzr(h);   //Plota diagrama de polos e zeros

//Resposta ao degrau (Sistema subamortecido)

Vin = 12;                      //Entrada degrau
t = 0:0.001:0.12;                   //Tempo de 0 a 10seg com passo de 0.01seg
A = sqrt(1-ksi^2);
B = -(ksi*ohmega_n*t);
C = exp(B);
D = (A/ksi);
E = atan(D);
ohmega_d = ohmega_n.*A;
F = sin(ohmega_d.*t+E);
G = (C/A);
Vo = Vin*(1-G.*F);

//Dinâmica da tensão do resistor

figure(1);                                                    //Instancia uma figura
clf();                                                        //Limpa a janela gráfica (figura em branco)
plot(t,Vo);                                                   //Plota a dinâmica do sistema 
title('Dinâmica da tensão do Resistor | Vo(t)','fontsize',3); //Define o título
xlabel('t [s]','fontsize',3);                                 //Define descrição do eixo x
ylabel('Vo [V]','fontsize',3);                                //Define descrição do eixo y
xgrid;
