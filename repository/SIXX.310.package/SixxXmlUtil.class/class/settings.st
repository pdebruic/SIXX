accessing
settings
	settings isNil
		ifTrue: [settings := Smalltalk
						at: #SixxSettings
						ifAbsent: [self error: 'SixxSettings is needed to run SIXX']].
	^ settings