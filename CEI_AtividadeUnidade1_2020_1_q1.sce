
clear; //Apaga variáveis

R = 10;          //Resistência
L = 1.1*10^(-3); //Indutância

k = 1/L;   //Ganho
p = R/L;   //Polo
tau = 1/p; //Constante de tempo

num = 1;                //Numerador
s = poly(0, 's');       //poly(): Função para definir polinômios. Permite criar polinômios, no caso, com a variável s
den = (p+s);            //Denominador
H = syslin([],num,den); //cria função linear

figure(0); //Instancia uma figura
clf();     //Limpa a janela gráfica (figura em branco)
plzr(H);   //Plota diagrama de polos e zeros

Vin = 2.5;            //Entrada degrau
I0 = 0;               //Valor inicial
Iin = Vin/R;          //Corrente de entrada 
t = 0:0.00001:0.0008; //Tempo de 0 a 10seg com passo de 0.01seg

IL = Iin + ( I0 - Iin )*exp(-t/tau); //Dinâmica do sistema (Resposta ao degrau)

figure(1);                                                         //Instancia uma figura
clf();                                                             //Limpa a janela gráfica (figura em branco)
plot(t,IL);                                                        //Plota a dinâmica do sistema 
title('Dinâmica da corrente do circuito RL | IL(t)','fontsize',3); //Define o título
xlabel('t [s]','fontsize',3);                                      //Define descrição do eixo x
ylabel('IL [A]','fontsize',3);                                     //Define descrição do eixo y
xgrid;
