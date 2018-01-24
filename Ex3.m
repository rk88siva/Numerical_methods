% Determine the roots using Newton's method and Secant method.

% Funtion f(x) and diff(f(x))
f=@(x) x^2+x-5;
df=@(x) 2*x +1;

% Exercise 3.1 ----> Newton's Method  

n = 0; 					% iteration counter
x = input( 'Initial guess: ' ); 	% estimate of root
re = 1e-8;				% required relative error
myrel = 1;

while myrel > re & (n < 20)
xold = x;
x = x - f(x)/df(x);
n = n + 1;
disp( [x f(x)] )
myrel = abs((x-xold)/x);
end;

if myrel <= re
disp( 'Zero found at' )
disp( x )
else
disp( 'Zero NOT found' )
end;

disp('Number of iterations')
n

% Exercise 3.2 ---------> Secant method

a=input('Enter the x0 value =');
b=input('Enter the X1 value =');
maxerr= input('Enter the Maximum Error value = ') 	% Default value is 0.001
c = b-((f(b)*(b-a))/(f(b)-f(a)));

disp('   Xn-1      f(Xn-1)      Xn      f(Xn)      Xn+1      f(Xn+1)');
disp([a f(a) b f(b) c f(c)]);


while abs(f(c)) > maxerr
	    a = b;
	    b = c;
            c = b-((f(b)*(b-a))/(f(b)-f(a)));
	    disp([a f(a) b f(b) c f(c)]);
	    
	   flag = flag + 1;
	  if(flag == 100)
             break;
          end
end

display(['Root is x = ' num2str(c)]);
y = c;


