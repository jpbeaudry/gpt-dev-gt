Class {
	#name : #BaselineOfGptDevGt,
	#superclass : #BaselineOf,
	#category : #BaselineOfGptDevGt
}

{ #category : #baseline }
BaselineOfGptDevGt >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GptDevGt'
		]
]
