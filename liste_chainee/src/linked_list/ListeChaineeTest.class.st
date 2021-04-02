Class {
	#name : #ListeChaineeTest,
	#superclass : #TestCase,
	#category : #'linked_list'
}

{ #category : #tests }
ListeChaineeTest >> testAddElement [ "on test l'ajout d'un element"
|list node1 node2|
list := ListeChainee new. 
node1 := Node new.
node2 := Node new.
node1 value: 5.
node2 value: 7.
list addElementToList: node1. "ajout de 2 node a notre liste, l'un avec une valeur 5 l'autre avec 7"
list addElementToList: node2.
self assert: list size equals: 2. "on verifie la taille de notre liste"
self assert: list head value equals:5. " on verifie que la valeur de la tete est correcte"
self assert: list tail value equals:7 "ainsi que celle de la tail"
]

{ #category : #tests }
ListeChaineeTest >> testDeleteAnElement [ "test de suppression du dernier element"
|list node1 node2|
list := ListeChainee new. 
node1 := Node new.
node2 := Node new.
node1 value: 5.
node2 value: 7.
list addElementToList: node1.
list addElementToList: node2.
list deleteLastNode. "on commence par tester la suppression lorsque notre liste n'a que 2 elements"
self assert: list size equals: 1.
self assert: list head value equals: 5.
self assert: list tail value equals: 5.
list addElementToList: node2.
list addElementToList: node1.
list deleteLastNode. "test de suppression lorsque la liste a plus de 2 elements"
self assert: list size equals: 2.
self assert: list head value equals: 5.
self assert: list tail value equals: 7.
]

{ #category : #tests }
ListeChaineeTest >> testLinkedListIsSet [ "verification de l'implementation de la liste"

|x|
x := ListeChainee new.
self assert: x size equals: 0
]

{ #category : #tests }
ListeChaineeTest >> testSizeVariable [ "verification de la methode pour donner la taille de la liste"
|list node1 node2|
list := ListeChainee new. 
node1 := Node new.
node2 := Node new.
node1 value: 5.
node2 value: 7.
list addElementToList: node1.
list addElementToList: node1.
self assert: list size equals: 2
]
