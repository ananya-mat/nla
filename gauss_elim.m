A=[1 1 -1; 2 1 1; 3 1 -1];
B=[1;-2; 3];
Ab = [A, B];
[n, m] = size(Ab);

% Forward elimination
for k = 1:n-1
    for i = k+1:n
        factor = Ab(i, k) / Ab(k, k);
        for j = k:m
            Ab(i, j) = Ab(i, j) - factor * Ab(k, j);
        end
    end
end

% Back substitution
x = zeros(n, 1);
x(n) = Ab(n, m) / Ab(n, n);

for i = n-1:-1:1
    sum = 0;
    for j = i+1:n
        sum = sum + Ab(i, j) * x(j);
    end
    x(i) = (Ab(i, m) - sum) / Ab(i, i);
end

% Display the solution
disp('Solution x:');
disp(x);
