Class {
	#name : #Topic,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'intance creation' }
Topic class >> name: aName description: aDescription [
	^ self new
		name: aName
		description: aDescription;
		yourself
]

{ #category : #accessing }
Topic >> addQuestion: aQuetion [
	questions add: aQuetion 
]

{ #category : #accessing }
Topic >> description [
	^ description
]

{ #category : #initialize }
Topic >> initialize [
	questions := OrderedCollection new.
]

{ #category : #accessing }
Topic >> name [
	^name
]

{ #category : #'intance creation' }
Topic >> name: aName description: aDescription [
	name := aName.
	description := aDescription
]

{ #category : #accessing }
Topic >> questions [
	^ questions
]
