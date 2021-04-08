# Lab 9

|Student Name           | Student Number|
|-----------------------|---------------|
|Amber Kate Sin Yan Chun|    300144923  |

## Q1a: Test des formes normales

a. Liste toutes les clés candidates de R.

	AB et BC sont des clés candidates de R.

b. Est-ce que R est dans 3NF? BCNF? R et dans 3NF et BCNF.

## Q1b: Test des formes normales

a. Liste toutes les clés candidates de R.
	
	A et B sont des clés candidates de R.

b. Est-ce que R est dans 3NF? BCNF?

## Q1c: Test des formes normales

a. Liste toutes les clés candidates de R.

	B est une clé candidate de R.

b. Est-ce que R est dans 3NF? BCNF?

## Q1d: Test des formes normales

a. Liste toutes les clés candidates de R.
	
	ABC et BCD sont des clés candidates de R.

b. Est-ce que R est dans 3NF? BCNF?

## Q1e: Test des formes normales

a. Liste toutes les clés candidates de R.
	
	AB est une clé candidate de R.

b. Est-ce que R est dans 3NF? BCNF?

## Q2a: Test de la dépendance fonctionnelle

Est AB -> D valid? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

(AB)+ = AB = ABC = ABCD =ABCDE 
Oui AB-> D est valide car D est un sous-ensemble de (AB)+

## Q2b: Test de la dépendance fonctionnelle

Est A -> C valid? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

(A)+ = A
Non A->C n'est pas valide car C n'est pas un sous-ensemble de (A)+

## Q2c: Test de la dépendance fonctionnelle

Est B -> C valid? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

(B)+ = B
Non B->C n'est pas valide car C n'est pas un sous-ensemble de (B)+

## Q2d: Test de la dépendance fonctionnelle

Est A -> C ou B -> C valid? Si oui, montrez une preuve formelle; sinon, donnez un contreexemple.

Non car ni A->C ni B->C est valide.

## Q3: Couverture canonique

## Q4: Décomposition BCNF