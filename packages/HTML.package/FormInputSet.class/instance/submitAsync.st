action
submitAsync
	"collect inputs and instruct the browser to do a submission"
	| inputValues |
	inputValues := Dictionary new.
	inputs do: [ :input |
		input active ifTrue: [
			(inputValues includesKey: input name) ifFalse: [
				inputValues at: input name  put: (OrderedCollection new: 1) ].
			(inputValues at: input name)  add: input value ] ].
	"we need to have a OrderedCollection for each input key in order to complay with HTTPSocket interface"
	^ self browser submitFormWithInputsAsync: inputValues url: form url
		method: form method encoding: form encoding