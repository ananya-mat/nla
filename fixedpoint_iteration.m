syms x;
x0 = input('Enter initial guess: ');
tol = input('Enter tolerance: ');

f=x^3 + 4*x^2 - 10;
df = diff(f,x);
f_handle = matlabFunction(f);
df_handle = matlabFunction(df);

g=@(x) x - f_handle(x)/ df_handle(x);
n=50;
i=1;
while(i<=n)
    x1=g(x0);
    if abs(x1-x0)<tol
        disp(x1)
        break
    else
        i=i+1;
        x0=x1;
    end
end
disp(x1)