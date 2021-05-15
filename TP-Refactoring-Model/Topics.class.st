Class {
	#name : #Topics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
Topics >> retrieveQuestions: aUser [
|orden|
	orden := self ordenarPorVotos: aUser questionFromTopics  .
	^ self filter: orden andUser: aUser
]
