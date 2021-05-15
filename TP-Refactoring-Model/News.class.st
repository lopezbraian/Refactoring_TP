Class {
	#name : #News,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
News >> retrieveQuestions: aUser [

	^ self filter: (self ordenarPorVotos: cuoora preguntasDiaActual ) andUser: aUser. 
	

]
