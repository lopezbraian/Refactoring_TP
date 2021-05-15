Class {
	#name : #PopularToday,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
PopularToday >> retrieveQuestions: aUser [
	
	^ self filter: (self ordenarPorVotos:cuoora preguntasPopulares) andUser:aUser.
 
]
