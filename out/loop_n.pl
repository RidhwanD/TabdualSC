a(1,2).
a(2,3).
a(3,4).
b(1,4).
b(2,3).
b(2,5).
a(_742,_744,_766,_766) :- a(_742,_744).
not_a(_742,_744,_836,_836) :- not a(_742,_744).
b(_930,_932,_954,_954) :- b(_930,_932).
not_b(_930,_932,_1024,_1024) :- not b(_930,_932).
e(_1556,_1572,_1578) :- insert_abducible(e(_1556),_1572,_1578).
not_e(_1658,_1686,_1692) :- insert_abducible(not e(_1658),_1686,_1692).
d_ab(_1824,_1916) :- b(_1824,_1836,[e(_1836)],_1916).

d(_2070,_2076,_2082) :- d_ab(_2070,_2142),produce_context(_2082,_2076,_2142).
d_star1(_2204,_2316,_2316) :- [_2204]\=[_1824].
d_star1(_2204,_2222,_2228) :- dual(1,d_star1(_2204),_2222,_2228).
not_d(_2204,_2222,_2228) :- d_star1(_2204,_2222,_2228).

c_ab(_2496,_2634) :- a(_2496,_2508,[],_2582),d(_2508,_2582,_2634).

:- table c_ab/2.
c(_2732,_2738,_2744) :- c_ab(_2732,_2804),produce_context(_2744,_2738,_2804).
c_star1(_2866,_2978,_2978) :- [_2866]\=[_2496].
c_star1(_2866,_2884,_2890) :- dual(1,c_star1(_2866),_2884,_2890).
not_c(_2866,_2884,_2890) :- c_star1(_2866,_2884,_2890).

not_false(_3150,_3150).


