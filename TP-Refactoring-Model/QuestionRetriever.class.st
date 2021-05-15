Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'option',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> filter: aQuestionCollection andUser:aUser [

^(aQuestionCollection last: (100 min: aQuestionCollection size))reject: [ :q | q user = aUser ]

]

{ #category : #'as yet unclassified' }
QuestionRetriever >> getQuestionFrom: aCollection andUser: aUser [
	| seleccion orden |
	seleccion := aCollection flatCollect: [ :item | item questions ].
	orden := self ordenarPorVotos: seleccion.
	^ self filter: orden andUser: aUser
]

{ #category : #initializing }
QuestionRetriever >> initialize [
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> ordenarPorVotos: aCollection [

^ aCollection asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ]
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
self subclassResponsibility .

]
