a(_5190,_5206,_5212) :- insert_abducible(a(_5190),_5206,_5212).
not_a(_5292,_5320,_5326) :- insert_abducible(not a(_5292),_5320,_5326).
b(_5406,_5422,_5428) :- insert_abducible(b(_5406),_5422,_5428).
not_b(_5508,_5536,_5542) :- insert_abducible(not b(_5508),_5536,_5542).
p_ab(_5674,[a(_5674)]).

:- table p_ab/2.
p(_5790,_5796,_5802) :- p_ab(_5790,_5862),produce_context(_5802,_5796,_5862).
p_star1(_5924,_6036,_6036) :- [_5924]\=[_5674].
p_star1(_5674,_5942,_5948) :- not_a(_5674,_5942,_5948).
not_p(_5924,_5942,_5948) :- p_star1(_5924,_5942,_5948).

q_ab(_6244,[b(_6244)]).

:- table q_ab/2.
q(_6360,_6366,_6372) :- q_ab(_6360,_6432),produce_context(_6372,_6366,_6432).
q_star1(_6494,_6606,_6606) :- [_6494]\=[_6244].
q_star1(_6244,_6512,_6518) :- not_b(_6244,_6512,_6518).
not_q(_6494,_6512,_6518) :- q_star1(_6494,_6512,_6518).

r_ab([a(1),b(1),a(2),b(2)]).

r_ab(_7172) :- p(1,[],_7128),p(2,_7128,_7172).

:- table r_ab/1.
r(_7244,_7250) :- r_ab(_7292),produce_context(_7250,_7244,_7292).
r_star1(_7358,_7364) :- not_a(1,_7358,_7364).
r_star1(_7358,_7364) :- a(1,_7358,_7648),not_b(1,_7648,_7364).
r_star1(_7358,_7364) :- a(1,_7358,_7802),b(1,_7802,_7852),not_a(2,_7852,_7364).
r_star1(_7358,_7364) :- a(1,_7358,_8012),b(1,_8012,_8062),a(2,_8062,_8112),not_b(2,_8112,_7364).
r_star2(_7418,_7364) :- not_p(1,_7418,_7364).
r_star2(_7418,_7364) :- p(1,_7418,_8454),not_p(2,_8454,_7364).
not_r(_7358,_7364) :- copy_term([],[]),r_star1(_7358,_7418),copy_term([],[]),r_star2(_7418,_7364).

false_star1(_8630,_8636) :- not_p(_8604,_8630,_8636).
false_star1(_8630,_8636) :- p(_8604,_8630,_8884),not_q(_8604,_8884,_8636).
not_false(_8630,_8636) :- false_star1(_8630,_8636).
