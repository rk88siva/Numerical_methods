% Creating Vectors and Matrices 

x = [1, 3, 2]
x = [1; 3; 2]

A = [1, 1, 2; 3, 5, 8; 13, 21, 34]

A = [1, 6, 3; 2, 7, 4]
B = [2, 7, 2; 7, 3, 9]

% Operators
A ./ B
a = 5;

%The dot divide operators can also be used together with scalars in the following manner.

C = a ./ B
C = a .^ B
%C = A*B
% The transpose operator
A'
% Inverse 
% inv(A)

% Indexing

x = [1.2, 5, 7.6, 3, 8]
x(2)
x([1, 3, 4])
A = [1, 2, 3; 4, 5, 6; 7, 8, 9]
A([1, 3], [2, 3])
A(2, :)
A(:,:)

% Extracting bits of matrices
J = [1 2 3 4;5 6 7 8;11 13 18 10];
J(1,1)
J(2,3)
J(1:2, 4)   
J(3,:)      
J(3, 2:3) = [-1 0]

% Ranges

% start:step:stop

1:3:10
1:10
A(1:2, 1:2)
A(:,end)

% Building composite matrices
% comp = [eye(3) B; A zeros(2,2)]

% Matrices as tables

t=0:0.2:1;


% functions for creating marices

A = [1, 2, 3; 4, 5, 6; 7, 8, 9];

[m,n]=size(A)
tril(A)		
triu(A)	
eye(n) 	
ones(m, n)  
zeros(m, n) 
rand(m, n) 
randn(m, n) 
randperm(n)
diag(A) 
fliplr(A)
flipud(A)
rot90(A)
% reshape(A, 2, 6)


% linspace(a, b, n) returns a vector with n values, such that the first element equals a, the last element equals b and the difference between consecutive elements is constant. The last argument, n, is optional with default value 100.


linspace(2, 4, 2)
linspace(2, 4, 4)
linspace(2, 4, 6)


% other commands

x = rand(1, 6)
sort(x)


%	eye 	Create an identity matrix
% 	zeros 	Create a matrix of zeros
%	ones 	Create a matrix of ones
%	rand 	Create a matrix filled with random numbers
% 	diag 	Create a diagonal matrix, or extract the diagonal of the given matrix
%	inv 	Inverse of a matrix
%	det 	Determinant of a matrix
%	trace 	Trace of a matrix
%	eig 	Calculate the eigenvectors and eigenvalues of a matrix
%	rank 	Calculate an estimate of the rank of a matrix
%	null 	Calculate a basis for the null space of a matrix
%	rref 	Perform Gaussian elimination on an augmented matrix
%	lu 	Calculate the LU decomposition of a matrix
%	qr 	Calculate the QR decomposition of a matrix
%	svd 	Calculate the SVD of a matrix
%	pinv 	Calculate the pseudoinverse of a matrix

% Reference
% http://www-h.eng.cam.ac.uk/help/programs/octave/tutorial
