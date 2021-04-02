Class {
	#name : #Node,
	#superclass : #Object,
	#instVars : [
		'value',
		'next_value'
	],
	#category : #'linked_list'
}

{ #category : #accessing }
Node >> next_value [ "retourne le node suivant"
	 ^next_value
]

{ #category : #accessing }
Node >> next_value: aNode [ "sert a garder en memoire le noeud suivant"
 next_value := aNode
]

{ #category : #evaluating }
Node >> value [ "valeur du node "
 ^value

]

{ #category : #accessing }
Node >> value: anInteger [
 value := anInteger
]
