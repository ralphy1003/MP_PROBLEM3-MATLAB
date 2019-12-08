%PROBLEM 3-MATLAB
function X = PROB3(A)

for n = 1:length(A)-1
X =polyfit(A(:,1), A(:, 2), n);
Y =norm(A(:,2)-polyval(X, A(:, 1)));
a =[n,Y];
if n==1
    b=a;
end
if b(2)>= a(2)
    c=a(1);
end
end

X =polyfit(X(:,1),X(:,2), c);

end