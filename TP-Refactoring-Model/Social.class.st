Class {
	#name : #Social,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
Social >> retrieveQuestions: aUser [
|orden |
	orden := self ordenarPorVotos: aUser questionFromFollowing .
	^ self filter: orden andUser: aUser

]
