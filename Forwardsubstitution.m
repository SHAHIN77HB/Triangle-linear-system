function x = Forwardsubstitution (A , b)
% This function solves linear system of equations Lx=b
% which L is lower triangular matrix whose diagonal
% elements are not equal to zero with Forward Substitution procedure

n=length(A);
x=zeros(n,1);
x(1)=b(1)/A(1,1);
for i=2:n
    d=b(i)-A(i,:)*x;
    x(i)=d/A(i,i);

end