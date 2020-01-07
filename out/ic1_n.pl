a(_5078,_5094,_5100) :- insert_abducible(a(_5078),_5094,_5100).
not_a(_5180,_5208,_5214) :- insert_abducible(not a(_5180),_5208,_5214).
b(_5294,_5310,_5316) :- insert_abducible(b(_5294),_5310,_5316).
not_b(_5396,_5424,_5430) :- insert_abducible(not b(_5396),_5424,_5430).
p_ab(_5562,[a(_5562)]).

:- table p_ab/2.
p(_5678,_5684,_5690) :- p_ab(_5678,_5750),produce_context(_5690,_5684,_5750).
p_star1(_5812,_5924,_5924) :- [_5812]\=[_5562].
p_star1(_5562,_5830,_5836) :- not_a(_5562,_5830,_5836).
not_p(_5812,_5830,_5836) :- p_star1(_5812,_5830,_5836).

q_ab(_6128,[b(_6128)]).

:- table q_ab/2.
q(_6244,_6250,_6256) :- q_ab(_6244,_6316),produce_context(_6256,_6250,_6316).
q_star1(_6378,_6490,_6490) :- [_6378]\=[_6128].
q_star1(_6128,_6396,_6402) :- not_b(_6128,_6396,_6402).
not_q(_6378,_6396,_6402) :- q_star1(_6378,_6396,_6402).

r_ab(_6836) :- not_q(1,[a(1)],_6836).

r_ab(_6926) :- p(1,[],_6926).

:- table r_ab/1.
r(_6998,_7004) :- r_ab(_7046),produce_context(_7004,_6998,_7046).
r_star1(_7112,_7118) :- not_a(1,_7112,_7118).
r_star1(_7112,_7118) :- a(1,_7112,_7402),q(1,_7402,_7118).
r_star2(_7172,_7118) :- not_p(1,_7172,_7118).
not_r(_7112,_7118) :- copy_term([],[]),r_star1(_7112,_7172),copy_term([],[]),r_star2(_7172,_7118).

false_star1 :- (p(_7734,[],_7896),not_q(_7734,_7896,_7974)),assertICs(_7974).

not_false :- false_star1.
:- not_false.
