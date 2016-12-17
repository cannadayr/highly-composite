∇return←highlyComposite N

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

∇return←allHighlyComposite N

	array←highlyComposite¨⍳N
⍝ Create an array of all numbers 1 to N and whether they are highly composite.

	array←array×⍳⍴array
⍝ Multiply each element of the array by its position.

	array←array[⍋array]
⍝ Order the array.

	index←-(⍴array)-(array⍳1)-1
⍝ Create an index for the position before 1 in the ordered array.

	return←index↑array
⍝ Return the taken array.

∇

highlyComposite 5040

allHighlyComposite 1000

)OFF
