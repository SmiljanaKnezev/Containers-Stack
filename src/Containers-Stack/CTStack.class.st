"
I implement a simple Stack. 

- #push: adds a new object of any kind on top of the stack. 
- #pop returns the first element and remove it from the stack. 
- #top answer the first element of the stack without removing it.
"
Class {
	#name : #CTStack,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #'Containers-Stack'
}

{ #category : #initialization }
CTStack >> initialize [

	super initialize.
	elements := OrderedCollection new
]

{ #category : #testing }
CTStack >> isEmpty [ 
	
	^ elements isEmpty
]

{ #category : #operations }
CTStack >> pop [
	"Returns the first element and remove it from the receiver."

	^ elements removeFirst 
]

{ #category : #operations }
CTStack >> push: anObject [ 
	"Adds a new object of any kind on top of the receiver."
	
	elements addFirst: anObject.
	^ anObject
]

{ #category : #operations }
CTStack >> top [
	"Answer the first element of the receiver without removing it."
	
	^ elements first
]
