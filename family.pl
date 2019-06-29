child(X,Y) :- parent(Y,X),X\=Y.
cousin(X,Y) :- parent(X,F),parent(Y,M),sibling(F,M),F\=M,X\=Y.
sibling(X,Y) :-  male(F),parent(X,F),parent(Y,F),X\=Y.
brother(X,Y):-  male(F),parent(X,F),parent(Y,F),male(Y),X\=Y.
sister(X,Y):- male(F),parent(X,F),parent(Y,F),female(Y),X\=Y.
mother(X,Y) :- female(Y),parent(X,Y),X\=Y.
father(X,Y) :- male(Y),parent(X,Y),X\=Y.
grandfather(X,Y) :- male(Y),parent(T,Y),parent(X,T),X\=Y.
grandmother(X,Y) :- female(Y),parent(T,Y),parent(X,T),X\=Y.
paternalgrandfather(X,Y) :-  male(Y),parent(T,Y),parent(X,T),male(T),X\=Y.
paternalgrandmother(X,Y) :-  female(Y),parent(T,Y),parent(X,T),male(T),X\=Y.
maternalgrandfather(X,Y) :-  male(Y),parent(T,Y),parent(X,T),female(T),X\=Y.
maternalgrandmother(X,Y) :-  female(Y),parent(T,Y),parent(X,T),female(T),X\=Y.
uncle(X,Y) :- male(Y),parent(X,P),sibling(Y,P),X\=Y.
uncle(X,Y):- husband(P,Y),sibling(P,Z),parent(X,Z),X\=Y.
aunt(X,Y) :- female(Y),parent(X,P),sibling(Y,P),X\=Y.
aunt(X,Y) :- wife(P,Y),sibling(P,Z),parent(X,Z),X\=Y.
son(X,Y) :- parent(Y,X),male(Y),X\=Y.
daughter(X,Y) :- parent(Y,X),female(Y),X\=Y.
husband(X,Y) :- female(X),male(Y),spouse(Y,X),X\=Y.
wife(X,Y):- female(Y),male(X),spouse(X,Y),X\=Y.
grandson(X,Y) :-male(Y),parent(T,X),parent(Y,T),X\=Y.
granddaughter(X,Y) :- female(Y),parent(T,X),parent(Y,T),X\=Y.
nephew(X,Y) :- son(P,Y),sibling(P,X),X\=Y.
niece(X,Y) :- daughter(P,Y),sibling(P,X),X\=Y.
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,A),ancestor(A,Y).
descendant(X,Y) :- child(X,Y).
descendant(X,Y) :- child(X,A),descendant(A,Y).

male(saju).
male(joice).
male(akarsh).
male(ashak).
male(stuart).
male(simon).
male(jithin).
male(deon).
male(joy).
male(john).
female(shobha).
female(daisy).
female(ashly).
female(allissa).
female(bincy).
female(mariyam).
female(katelin).
female(diya).
female(shiji).
female(christine).
female(mary).


parent(daisy,john).
parent(daisy,mariyam).
parent(bincy,john).
parent(bincy,mariyam).
parent(stuart,john).
parent(stuart,mariyam).
parent(simon,john).
parent(simon,mariyam).
parent(jithin,stuart).
parent(jithin,shobha).
parent(christine,stuart).
parent(christine,shobha).
parent(katelin,stuart).
parent(katelin,shobha).
parent(diya,simon).
parent(diya,shiji).
parent(deon,simon).
parent(deon,shiji).
parent(ashly,saju).
parent(ashly,bincy).
parent(allissa,saju).
parent(allissa,bincy).
parent(ashak,joice).
parent(ashak,daisy).
parent(akarsh,joice).
parent(akarsh,daisy).
parent(joice,joy).
parent(joice,mary).

spouse(joy,mary).
spouse(john,mariyam).
spouse(stuart,shobha).
spouse(joice,daisy).
spouse(saju,bincy).
spouse(simon,shiji).
