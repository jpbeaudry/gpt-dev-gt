Class {
	#name : #BaselineOfGptDevGt,
	#superclass : #BaselineOf,
	#category : #BaselineOfGptDevGt
}

{ #category : #accessing }
BaselineOfGptDevGt class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gpt-dev-gt' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGptDevGt >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GptDevGt'
		]
]
