Class {
	#name : #ListeChainee,
	#superclass : #Object,
	#instVars : [
		'head',
		'tail',
		'size'
	],
	#category : #'linked_list'
}

{ #category : #adding }
ListeChainee >> addElementToList: node [ "permet d'ajouter un élément à la liste avec vérification de la taille pour voir si il faut ou pas modifier la tête" 
	|new_node|
	new_node := node.
	size=0 ifFalse: [tail next_value: new_node]. "si notre liste contient au moins 1 element seule la tail doit etre modifie, l'element precedent doit nous emener sur notre nouvelle tail"
	size=0 ifTrue: [ head := new_node ].  "si la liste est vide alors on doit aussi initialiser la partie head"
	tail := new_node. 
	size := size + 1.
	^0
	
	

]

{ #category : #accessing }
ListeChainee >> deleteLastNode [ "permet de supprimer le dernier element de la liste chainee. Pourrai servir a creer une focntion qui retire le n eme element"
	size=0 ifTrue: [ ^0 ]. 
	size=1 ifTrue: [ size := 0 ]. "dans ce cas lors de l'ajout d'un element a cette liste a la fois la partie head et tail prendront la valeur du nouveau node."
	size=2 ifTrue: [ tail := head ]. "on revient dans ce cas a une liste chainee de taille 1."
	size=2 ifFalse:[ tail := head ]. "on fait ça car pour le cas ou la liste est plus grande que 2 pour supprimer un element on va devoir la parcourir, en commencant par la tete, on aurait pu gagner une ligne en enlevant le cas size =2 IfTrue mais pour des questions de clarete on le laisse"
	size=2 ifFalse: [ 1 to: size by:1 do: [ :n | tail := tail next_value] ].
	tail next_value: nil.
	size>0 ifTrue: [ size := size-1 ]. "on a deja traiter les cas qui remettent la taille a 0"
	^0
	
	
]

{ #category : #accessing }
ListeChainee >> head [ "premier node de la liste"
	^head value.
	
]

{ #category : #initialization }
ListeChainee >> initialize [ "permet d'initialiser lors de la creation de la liste sa taille a 0"
	super initialize. 
	size := 0
]

{ #category : #adding }
ListeChainee >> size [ "renvoie la taille de notre liste chainee"
	^size

]

{ #category : #accessing }
ListeChainee >> tail [ "dernier node de la liste"
	^tail value 
	
	
]
