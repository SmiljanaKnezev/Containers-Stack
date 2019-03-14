Class {
	#name : #CTStackTest,
	#superclass : #TestCase,
	#instVars : [
		'empty',
		'nonEmpty'
	],
	#category : #'Containers-Stack-Tests'
}

{ #category : #requirements }
CTStackTest >> empty [
	
	^ empty
]

{ #category : #requirements }
CTStackTest >> nonEmpty [
	
	^ nonEmpty
]

{ #category : #setup }
CTStackTest >> setUp [
	super setUp.
	empty := self stackClass new.
	nonEmpty := self stackClass new.
	nonEmpty push: 1.
	nonEmpty push: -2.
	nonEmpty push: 3.
	nonEmpty push: 1.
	
]

{ #category : #setup }
CTStackTest >> stackClass [

	^ CTStack
]

{ #category : #tests }
CTStackTest >> testCopyCreatesANewObject [

	| copy |
	copy := self nonEmpty copy.
	self deny: self nonEmpty == copy
]

{ #category : #tests }
CTStackTest >> testCopyEmpty [

	| copy |
	copy := self empty copy.
	self assert: copy isEmpty
]

{ #category : #tests }
CTStackTest >> testIsEmpty [

	| aStack |
	aStack := self stackClass new.
	self assert: aStack isEmpty.
	aStack push: 1.
	self deny: aStack isEmpty

]

{ #category : #tests }
CTStackTest >> testPop [

	| aStack res elem |
	elem := 'anElement'.	
	aStack := self stackClass  new.
	self assert: aStack isEmpty.
	
	aStack push: 'a'.
	aStack push: elem.
	res := aStack pop.	
	self assert: res equals: elem.
	self assert: res == elem.
	
	self assert: aStack size equals: 1.
	aStack pop.
	self assert: aStack isEmpty.


]

{ #category : #tests }
CTStackTest >> testPush [
	
	| aStack |
	aStack := self stackClass new.
	aStack push: 'a'.
	self assert: aStack size = 1.	
	aStack push: 'b'.
	self assert: aStack size = 2.
	
]

{ #category : #tests }
CTStackTest >> testSize [
	
	| aStack |
	aStack := self stackClass new.
	self assert: aStack size equals: 0.
	aStack push: 'a'.
	self assert: aStack size equals: 1.
	aStack push: 'b'.
	self assert: aStack size equals: 2.
	aStack pop.
	self assert: aStack size equals: 1.
	aStack pop.
	self assert: aStack size equals: 0.

 
	



]

{ #category : #tests }
CTStackTest >> testTop [

	| aStack |
	aStack := self stackClass new.
	self assert: aStack isEmpty.
	aStack push: 'a'.
	aStack push: 'b'.
	self assert: aStack top equals: 'b'.
	self assert: aStack top equals: 'b'.
	self assert: aStack size equals: 2.
]
