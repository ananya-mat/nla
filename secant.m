clc
format long
f = @(x) x- cos(x);
x0 = input('enter initial guess: ');
x1 = input('enter second guess: ');
tol = input('enter tolerance: ');
n=100;
for i=i:n
    x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
    if abs(x2-x1)/x2 < tol
        disp(x2)
        break;
    end
    x0=x1;
    x1=x2;
end