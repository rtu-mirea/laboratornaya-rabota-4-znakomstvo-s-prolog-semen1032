domains
	s=symbol
predicates
	nondeterm parent(s,s)
	female(s)
	male(s)
	nondeterm mother(s,s)
	nondeterm father(s,s)
	nondeterm ancestor(s,s)
	nondeterm child(s,s)
	nondeterm grand_father(s,s).
	nondeterm grand_mother(s,s).

clauses
	parent(pam, bob).
	parent(tom, bob).
	parent(tom, liz).
	parent(bob, ann).
	parent(pat, jim).
	female(pam).
	female(liz).
	female(ann).
	female(pat).
	male(tom).
	male(bob).
	male(jim).
	child(Y, X):- parent(X, Y).
	mother(X, Y):- parent(X, Y), female(X).
	father(X, Y):- parent(X, Y), male(X).
	ancestor(X, Z):- parent(X, Z).
	ancestor(X, Z):- parent(X, Y), ancestor(Y, Z).
	grand_father(X,Y):- male(X), parent(P,Y), parent(X,P).
	grand_mother(X,Y):- female(X), parent(P,Y), parent(X,P).


goal
	grand_father(tom,Who).