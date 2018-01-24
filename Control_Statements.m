% if... else selection
% if expression
%	  statements
%	elseif expression
%	  statements
%	else
%	  statements
%	end


% Example 1

a=0; b=2;
if a > b
     c=3
 else
     c=4
  end

% Example 1.1
t = rand(1);
if t > 0.75
     s = 0;
   elseif t < 0.25
      s = 1;
   else
      s = 1-2*(t-0.25);
   end
s

% switch selection
%	switch x
%	  case x1,
%	    statements
%	  case x2,
%	    statements
%	  otherwise,
%	    statements
%	end

% Example 2

a=1;
switch a
case 0
disp('a is zero');
case 1
disp('a is one');
otherwise
disp('a is not a binary digit');
end

% Example 2.1

grade = 'B';
   switch(grade)
   case 'A' 
      fprintf('Excellent!\n' );
   case 'B' 
      fprintf('Well done\n' );
   case 'C' 
      fprintf('Well done\n' );
   case 'D'
      fprintf('You passed\n' );
   case 'F' 
      fprintf('Better try again\n' );
   otherwise
      fprintf('Invalid grade\n' );
   end

% for loops

% 	for variable = vector
%    		statements
%	end

% Example 3
for n=1:5
     nf(n) = factorial(n);
end
disp(nf)

% Example 3.1
for i=1:4
      disp(i^2)
end

% While loops
%	while expression
%	    statements
%	end

% Example 4
x=1;
while 1+x > 1
    x = x/2;
end
x

% Example 4.1
a = 10;
% while loop execution 
while( a < 20 )
   fprintf('value of a: %d\n', a);
   a = a + 1;
end

% Nested Loops

% Example 5
for i = 2:100
   for j = 2:100
      if(~mod(i,j)) 
         break; % if factor found, not prime
      end 
   end
   if(j > (i/j))
      fprintf('%d is prime\n', i);
   end
end

% Break statement 

% Example 6
a = 10;
% while loop execution 
while (a < 20 )
   fprintf('value of a: %d\n', a);
   a = a + 1;
      if( a > 15)
         % terminate the loop using break statement 
         break;
      end 
end

% Continue Statement

% Example 7
 a = 9;
%while loop execution 
while a < 20
   a = a + 1; 
   if a == 15
      % skip the iteration 
      continue;
   end 
fprintf('value of a: %d\n', a);
end


% Boolean Expressions
% 	symbol 		meaning 		example
%	== 	        equal 			if x == y
%	~= 		not equal 		if x ~= y
%	> 		greater than 		if x > y
%	>= 		greater than or equal 	if x >= y
%	< 		less than 		if x < y
%	<= 		less than or equal 	if x <= y
%	& 		AND 			if x == 1 & y > 2
%	| 		OR 			if x == 1 | y > 2
%	~ 		NOT 			x = ~y
