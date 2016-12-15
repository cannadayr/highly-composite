∇return←highlyComposite N

	return←{+/~((⍳⍵)|⍵)>0}¨⍳N

	return←return-(+/~((⍳N)|N)>0)

	return←return≥0

	return←(+/return)=1

∇

highlyComposite 5040

)OFF
