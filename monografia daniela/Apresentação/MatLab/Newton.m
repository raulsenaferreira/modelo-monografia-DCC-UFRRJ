clear all
% a=input('Calcular a reaiz quadrada de a')
% x=input('Entre com a aproximação inicial')
% nmax=input('Entre o número máximo de interações')
% 
% for j=1:nmax
%     x=0.5*(x+a/x)
% end
y(1)=0;
yy(1)=0;
h=0.2;%tamanho do passo
x=0.01:h:10;%malha no eixo x
for j=1:length(x)-1
    y(j+1)=y(j)+h*(1/(1+x(j)^2)-2*y(j)^2)+0.5*h^2*(-2*x(j)/(1+x(j)^2)^2+...
        (-4*y(j))*(1/(1+x(j)^2)-2*y(j)^2));
end
%%% Solução exata
xx=[0:0.1:10];
for j=1:length(xx)-1
    yy(j+1)=xx(j)/(1+xx(j)^2);
end
plot(x,y,'r*',xx,yy,'b.')