clc;
clear all;
format long e;
syms x
f=@(x) cos(x)-x;
x0 = input('Enter initial guess: ');
tol = input('Enter tolerance: ');
n=100;
d=diff(f,x);
df = inline(d);
if df(x0) ~= 0
    for i = 1:n
        x1 = x0-(f(x0)/df(x0));
        if abs(x1-x0)/x1 < tol
            disp(x1)                                                                                          
            break
        else
            i=i+1;
            x0=x1;
        end
    end
else
    disp('Newton Method fails')
end