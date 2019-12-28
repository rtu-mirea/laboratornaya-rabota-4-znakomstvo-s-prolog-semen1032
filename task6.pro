predicates
	likes(symbol,symbol).
	for_sale(symbol).
	can_afford(symbol,symbol).
	can_buy(symbol,symbol).
clauses
	likes(ellen, onions).
	likes(john, cheese).
	likes(tom, pizza).
	likes(tom, cheese).
	likes(eric, potatoes).
	for_sale(onions).
	for_sale(cheese).
	for_sale(pizza).
	can_afford(tom,pizza).
	can_afford(eric, potatoes).
	can_buy(X,Y):- for_sale(Y), likes(X,Y), can_afford(X,Y).
goal
	can_buy(tom,pizza).
