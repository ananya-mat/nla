clear;clc;
format long e

f=@(x) x^3-x-1;

a=1;
b=2;
dp = 4;
ep = 10^(-1*dp);

N = ceil((log10(b-a)-log10(ep)/log10(2)));
fprintf('No. of Iterations = %d\n', N);

fprintf('Bisection Method:\n');
for i=1:N
    c=(a+b)/2;
    fprintf('Iteration %d: a = %f, b = %f, c = %f, f(c) = %f\n', i, a, b, c, f(c));
    if f(a)*f(c) < 0
        b=c;
    else
        a=c;
    end
end
fprintf('Root found:');
 disp(c)
