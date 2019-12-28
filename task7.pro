predicates
	student(symbol)
	nondeterm friend(symbol, symbol)
	nondeterm can_contact(symbol, symbol)
clauses
	student(semen).
	student(ilya).
	student(boris).
	friend(semen, ilya).
	friend(ilya, boris).
	can_contact(X,Y):- friend(X, Z), friend(Z, Y).
goal
	can_contact(semen, boris).