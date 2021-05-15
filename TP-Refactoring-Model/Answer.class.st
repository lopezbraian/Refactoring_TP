Class {
	#name : #Answer,
	#superclass : #Entrada,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	^ self new
		description: anAnswer
		user: aUser
		question: aQuestion;
		yourself
]

{ #category : #'as yet unclassified' }
Answer >> description: anAnswer user: aUser question: aQuestion [
	description := anAnswer.
	user := aUser.
	question := aQuestion
]

{ #category : #testing }
Answer >> isTopAnswer [
	.
	^ self positiveVotes >=  ((question  sum: [:answer | answer positiveVotes size ]) / question answer size )
]

{ #category : #accessing }
Answer >> question [
	^ question
]
