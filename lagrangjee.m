% Lagrange Interpolation in MATLAB

% Input data points
x = [1, 3, 5];
y = [1.5, 3.5, 7.2];

xp = 2.5;
yp = 0;

n = length(x);

for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L * (xp - x(j)) / (x(i) - x(j));
        end
    end
    yp = yp + L * y(i);
end

fprintf('Interpolated value at x = %.2f is y = %.4f\n', xp, yp);