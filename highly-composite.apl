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

highlyComposite 5040

)OFF
