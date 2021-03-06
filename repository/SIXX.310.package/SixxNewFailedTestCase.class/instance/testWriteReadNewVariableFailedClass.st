tests
testWriteReadNewVariableFailedClass
	| original sixxString read |
	original := SixxMockVariableNewFailedClass prototype1.
	self should: [original att1 = 1].
	self should: [original att2 =  'TWO']. 
	sixxString := original sixxString.
	
	self should: [Object readSixxFrom: sixxString] raise: SixxNewFailed.
	read := [Object readSixxFrom: sixxString] on: SixxNewFailed do: [:ex | ex resume ].
	self should: [read att1 = 1].
	self should: [read att2 =  'TWO'].
	self should: [read att3Block notNil].
