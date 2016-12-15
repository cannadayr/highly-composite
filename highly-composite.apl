∇return←highlyComposite N

	return←{+/~((⍳⍵)|⍵)>0}¨⍳N
⍝ Create a list of the number of factors for numbers 1 through N.

	return←return-(+/~((⍳N)|N)>0)
⍝ Subtract the number of factors of N from each element.

	return←return≥0
⍝ Represent whether each element is greater than or equal to zero.

	return←(+/return)=1
⍝ Represent whether the sum equals one.

⍝	return←(+/((({+/~((⍳⍵)|⍵)>0}¨⍳N)-(+/~((⍳N)|N)>0))≥0))=1
⍝ This can alternatively be written as one line.

∇

highlyComposite 5040

)OFF
