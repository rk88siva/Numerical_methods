function [L,U,x] = LU_cholesky(A,B)
% Step 1  
[m n]=size(A);
if (m ~= n )
disp ( 'LR2 error: Matrix must be square' );
return;
end;

% Step 2 : Decomposition of matrix into L and U
L=zeros(m,m);
for i=1:m
    L(i, i) = sqrt( A(i, i) - L(i, :)*L(i, :)' );

    for j=(i + 1):m
        L(j, i) = ( A(j, i) - L(i, :)*L(j, :)' )/L(i, i);
    end
end
 

% disp('L and U values')

L;
U=L';

% Now use a vector y to solve 'Ly=b'
y=zeros(m,1); % initiation for y 
y(1)=B(1)/L(1,1);
for i=2:m
   %y(i)=B(i)-L(i,1)*y(1)-L(i,2)*y(2)-L(i,3)*y(3);
    y(i)=-L(i,1)*y(1);
      for k=2:i-1
          y(i)=y(i)-L(i,k)*y(k);
      end;
      y(i)=(B(i)+y(i))/L(i,i);
end;
y
% Now we use this y to solve Ux = y
x=zeros(m,1);
x(m)=y(m)/U(m,m);
i=m-1;
q=0;
while  (i~= 0)
  x(i)=-U(i,m)*x(m);
   q=i+1;
      while (q~=m)
          x(i)=x(i)-U(i,q)*x(q);
          q=q+1;
      end;
    x(i)=(y(i)+x(i))/U(i,i);
    i=i-1;
end;
x
