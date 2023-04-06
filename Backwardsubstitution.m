function x = Backwardsubstitution( A,b )
% This function solves linear system of equations Ux=b
% which U is anupper triangular matrix whose diagonal
% elements are not equal to zero with Backward Substitution procedure

n=length(A);
x=zeros(n,1);
x(n)=b(n)/A(end,end);
for i=n-1:-1:1
       d=b(i)-A(i,:)*x;
       x(i)=d/A(i,i);
end






