a(_5158,_5174,_5180) :- insert_abducible(a(_5158),_5174,_5180).
not_a(_5260,_5288,_5294) :- insert_abducible(not a(_5260),_5288,_5294).
b(_5374,_5390,_5396) :- insert_abducible(b(_5374),_5390,_5396).
not_b(_5476,_5504,_5510) :- insert_abducible(not b(_5476),_5504,_5510).
p_ab(_5642,[a(_5642)]).

:- table p_ab/2.
p(_5758,_5764,_5770) :- p_ab(_5758,_5830),produce_context(_5770,_5764,_5830).
p_star1(_5892,_6004,_6004) :- [_5892]\=[_5642].
p_star1(_5642,_5910,_5916) :- not_a(_5642,_5910,_5916).
not_p(_5892,_5910,_5916) :- p_star1(_5892,_5910,_5916).

q_ab(_6208,[b(_6208)]).

:- table q_ab/2.
q(_6324,_6330,_6336) :- q_ab(_6324,_6396),produce_context(_6336,_6330,_6396).
q_star1(_6458,_6570,_6570) :- [_6458]\=[_6208].
q_star1(_6208,_6476,_6482) :- not_b(_6208,_6476,_6482).
not_q(_6458,_6476,_6482) :- q_star1(_6458,_6476,_6482).

r_ab(_7094) :- not_q(1,[a(1),a(2)],_7016),not_q(2,_7016,_7094).

r_ab(_7252) :- p(1,[],_7208),p(2,_7208,_7252).

:- table r_ab/1.
r(_7324,_7330) :- r_ab(_7372),produce_context(_7330,_7324,_7372).
r_star1(_7438,_7444) :- not_a(1,_7438,_7444).
r_star1(_7438,_7444) :- a(1,_7438,_7728),q(1,_7728,_7444).
r_star1(_7438,_7444) :- a(1,_7438,_7870),not_a(2,_7870,_7444).
r_star1(_7438,_7444) :- a(1,_7438,_8030),a(2,_8030,_8080),q(2,_8080,_7444).
r_star2(_7498,_7444) :- not_p(1,_7498,_7444).
r_star2(_7498,_7444) :- p(1,_7498,_8410),not_p(2,_8410,_7444).
not_r(_7438,_7444) :- copy_term([],[]),r_star1(_7438,_7498),copy_term([],[]),r_star2(_7498,_7444).

false_star1(_8590,_8596) :- not_p(_8560,_8590,_8596).
false_star1(_8590,_8596) :- p(_8560,_8590,_8844),q(_8560,_8844,_8596).
not_false(_8590,_8596) :- false_star1(_8590,_8596).

