resolving
classAt: classOrMetaclassName in: environmentQualifier

	| isClassClass className retClass |
	isClassClass := false.
	className := (classOrMetaclassName includes: Character space)
				ifTrue: [isClassClass := true.
					classOrMetaclassName readStream upTo: Character space]
				ifFalse: [classOrMetaclassName].

	retClass := SixxPortableUtil classAt: className in: environmentQualifier.
	isClassClass ifTrue: [retClass := retClass class].

	^retClass