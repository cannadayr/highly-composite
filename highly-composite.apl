∇return←HighlyComposite N

	factors←{+/~((⍳⍵)|⍵)>0}
⍝ Create a function to return the number of factors of a number.

	array←factors¨⍳N
⍝ Create an array of the number of factors of numbers 1 to N.

	array←array≥factors N
⍝ Show whether each element is greater than or equal to the number of factors of N.

	return←(+/array)=1
⍝ Return whether the sum of the array equals one.

⍝	return←(+/((({+/~((⍳⍵)|⍵)>0}¨⍳N))≥(+/~((⍳N)|N)>0)))=1
⍝ This can alternatively be written as one line.

∇

∇return←ListHighlyComposite N

	array←HighlyComposite¨⍳N
⍝ Create an array of whether all numbers 1 to N are highly composite.

	array←array×⍳⍴array
⍝ Multiply each element of the array by its position.

	array←array[⍋array]
⍝ Order the array.

	index←-(⍴array)-(array⍳1)-1
⍝ Create an index for the position before 1 in the ordered array.

	return←index↑array
⍝ Return the taken array.

∇

N←5040

output←HighlyComposite N
⍝ Returns whether a given number is highly composite.

output/(N 'is a highly composite number.')
⍝ If the given number is highly composite, this message will output.

(~output)/(N 'is not a highly composite number.')
⍝ If the given number is not highly composite, this message will output.

N←1000

output←ListHighlyComposite N
⍝ Returns an array of highly composite numbers up to a given number.

((⍴output)>0)/('There are' (⍴output) 'highly composite numbers up to' N ':' output)
⍝ If there are greater than zero highly composite numbers up to a given number, this message will output.

((⍴output)=0)/('There are zero highly composite numbers up to' N '.')
⍝ If there are zero highly composite numbers up to a given number, this message will output.

)OFF
