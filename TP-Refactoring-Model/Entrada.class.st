Class {
	#name : #Entrada,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Entrada >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Entrada >> description [
	^ description
]

{ #category : #accessing }
Entrada >> description: anObject [
	description := anObject
]

{ #category : #initialization }
Entrada >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #'as yet unclassified' }
Entrada >> negativeVotes [
 ^ votes reject: [ :vote | vote isLike ]
]

{ #category : #'as yet unclassified' }
Entrada >> positiveVotes [
^ votes select: [ :vote | vote isLike ]

]

{ #category : #accessing }
Entrada >> timestamp [
	^ timestamp
]

{ #category : #accessing }
Entrada >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Entrada >> user [
	^ user
]

{ #category : #accessing }
Entrada >> user: anObject [
	user := anObject
]

{ #category : #accessing }
Entrada >> votes [
	^ votes
]
