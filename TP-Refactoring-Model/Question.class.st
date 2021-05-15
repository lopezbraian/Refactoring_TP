Class {
	#name : #Question,
	#superclass : #Entrada,
	#instVars : [
		'answers',
		'topics',
		'title'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ self new
		title: title
		description: aDescription
		user: aUser;
		yourself.
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^ self new
		title: title
		description: aDescription
		user: aUser;
		addTopic: aTopic;
		yourself.
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #'as yet unclassified' }
Question >> cantTotalVotosPosPorRespuesta [
 answers sum: [:answer | answer positiveVotes size ]
]

{ #category : #'as yet unclassified' }
Question >> cantVotosPositivos [

^ self positiveVotes size
]

{ #category : #initialization }
Question >> initialize [
	super initialize.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #'as yet unclassified' }
Question >> title: aTitle description: aDescription user: aUser [
	title := aTitle.
	description := aDescription.
	user := aUser
]

{ #category : #accessing }
Question >> topics [
	^topics 
]

{ #category : #accessing }
Question >> totalRespuestas [

^ answers size.
]
