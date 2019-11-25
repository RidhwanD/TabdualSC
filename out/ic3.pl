a(_5288,_5304,_5310) :- insert_abducible(a(_5288),_5304,_5310).
not_a(_5390,_5418,_5424) :- insert_abducible(not a(_5390),_5418,_5424).
b(_5504,_5520,_5526) :- insert_abducible(b(_5504),_5520,_5526).
not_b(_5606,_5634,_5640) :- insert_abducible(not b(_5606),_5634,_5640).
p_ab(_5772,[a(_5772)]).

:- table p_ab/2.
p(_5888,_5894,_5900) :- p_ab(_5888,_5960),produce_context(_5900,_5894,_5960).
p_star1(_6022,_6134,_6134) :- [_6022]\=[_5772].
p_star1(_5772,_6040,_6046) :- not_a(_5772,_6040,_6046).
not_p(_6022,_6040,_6046) :- p_star1(_6022,_6040,_6046).

q_ab(_6342,[b(_6342)]).

:- table q_ab/2.
q(_6458,_6464,_6470) :- q_ab(_6458,_6530),produce_context(_6470,_6464,_6530).
q_star1(_6592,_6704,_6704) :- [_6592]\=[_6342].
q_star1(_6342,_6610,_6616) :- not_b(_6342,_6610,_6616).
not_q(_6592,_6610,_6616) :- q_star1(_6592,_6610,_6616).

r_ab([a(1),b(1),a(2),b(2),a(3),b(3)]).

r_ab(_7452) :- p(1,[],_7358),p(2,_7358,_7408),p(3,_7408,_7452).

:- table r_ab/1.
r(_7524,_7530) :- r_ab(_7572),produce_context(_7530,_7524,_7572).
r_star1(_7638,_7644) :- not_a(1,_7638,_7644).
r_star1(_7638,_7644) :- a(1,_7638,_7928),not_b(1,_7928,_7644).
r_star1(_7638,_7644) :- a(1,_7638,_8082),b(1,_8082,_8132),not_a(2,_8132,_7644).
r_star1(_7638,_7644) :- a(1,_7638,_8292),b(1,_8292,_8342),a(2,_8342,_8392),not_b(2,_8392,_7644).
r_star1(_7638,_7644) :- a(1,_7638,_8558),b(1,_8558,_8608),a(2,_8608,_8658),b(2,_8658,_8708),not_a(3,_8708,_7644).
r_star1(_7638,_7644) :- a(1,_7638,_8880),b(1,_8880,_8930),a(2,_8930,_8980),b(2,_8980,_9030),a(3,_9030,_9080),not_b(3,_9080,_7644).
r_star2(_7698,_7644) :- not_p(1,_7698,_7644).
r_star2(_7698,_7644) :- p(1,_7698,_9422),not_p(2,_9422,_7644).
r_star2(_7698,_7644) :- p(1,_7698,_9576),p(2,_9576,_9626),not_p(3,_9626,_7644).
not_r(_7638,_7644) :- copy_term([],[]),r_star1(_7638,_7698),copy_term([],[]),r_star2(_7698,_7644).

false_star1(_9802,_9808) :- not_p(_9776,_9802,_9808).
false_star1(_9802,_9808) :- p(_9776,_9802,_10056),not_q(_9776,_10056,_9808).
not_false(_9802,_9808) :- false_star1(_9802,_9808).
