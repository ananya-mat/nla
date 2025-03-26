A=[1 1 -1; 2 -1 1; 3 1 -1];
B=[1;-2; 3];
a=[A B];
for k=1:2
    for i=k+1:3
        ftr=a(i,k)/a(k,k);
        a(i,:)=a(i,:)-ftr*a(k,:);
    end
end

n=3;
x=zeros(n,1);
for i=n:-1:1
    x(i) = a(i,end)-sum(a(i,i+1:n)*x(i+1:n))/a(i,i);
end
disp(x)
