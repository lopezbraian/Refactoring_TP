Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'users',
		'topics',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
CuOOra >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #adding }
CuOOra >> addQuestion: aQuestion forUser: aUser [
	aUser addQuestion: aQuestion.
	questions add: aQuestion.
]

{ #category : #adding }
CuOOra >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #adding }
CuOOra >> addUser: aUser [
	users add: aUser 

]

{ #category : #initialize }
CuOOra >> initialize [
	users := OrderedCollection new.
	topics := OrderedCollection new.
	questions := OrderedCollection new
]

{ #category : #'as yet unclassified' }
CuOOra >> preguntasDiaActual [

^ questions select:  [ :q | q timestamp asDate = Date today]
]

{ #category : #'as yet unclassified' }
CuOOra >> preguntasPopulares [
|popularTCol averageVotes |
popularTCol := self questions select:[ :q | q timestamp asDate = Date today].
averageVotes := (self questions sum: [ :q | q positiveVotes size ]) / popularTCol size.
^ popularTCol select: [ :q | q positiveVotes size >= averageVotes ].

]

{ #category : #accessing }
CuOOra >> questions [
	^ questions
]

{ #category : #accessing }
CuOOra >> topics [
	^ topics
]

{ #category : #accessing }
CuOOra >> users [
	^ users
]
