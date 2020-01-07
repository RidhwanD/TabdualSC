a(_5238,_5254,_5260) :- insert_abducible(a(_5238),_5254,_5260).
not_a(_5340,_5368,_5374) :- insert_abducible(not a(_5340),_5368,_5374).
b(_5454,_5470,_5476) :- insert_abducible(b(_5454),_5470,_5476).
not_b(_5556,_5584,_5590) :- insert_abducible(not b(_5556),_5584,_5590).
p_ab(_5722,[a(_5722)]).

:- table p_ab/2.
p(_5838,_5844,_5850) :- p_ab(_5838,_5910),produce_context(_5850,_5844,_5910).
p_star1(_5972,_6084,_6084) :- [_5972]\=[_5722].
p_star1(_5722,_5990,_5996) :- not_a(_5722,_5990,_5996).
not_p(_5972,_5990,_5996) :- p_star1(_5972,_5990,_5996).

q_ab(_6288,[b(_6288)]).

:- table q_ab/2.
q(_6404,_6410,_6416) :- q_ab(_6404,_6476),produce_context(_6416,_6410,_6476).
q_star1(_6538,_6650,_6650) :- [_6538]\=[_6288].
q_star1(_6288,_6556,_6562) :- not_b(_6288,_6556,_6562).
not_q(_6538,_6556,_6562) :- q_star1(_6538,_6556,_6562).

r_ab(_7352) :- not_q(1,[a(1),a(2),a(3)],_7190),not_q(2,_7190,_7274),not_q(3,_7274,_7352).

r_ab(_7578) :- p(1,[],_7484),p(2,_7484,_7534),p(3,_7534,_7578).

:- table r_ab/1.
r(_7650,_7656) :- r_ab(_7698),produce_context(_7656,_7650,_7698).
r_star1(_7764,_7770) :- not_a(1,_7764,_7770).
r_star1(_7764,_7770) :- a(1,_7764,_8054),q(1,_8054,_7770).
r_star1(_7764,_7770) :- a(1,_7764,_8196),not_a(2,_8196,_7770).
r_star1(_7764,_7770) :- a(1,_7764,_8356),a(2,_8356,_8406),q(2,_8406,_7770).
r_star1(_7764,_7770) :- a(1,_7764,_8560),a(2,_8560,_8610),not_a(3,_8610,_7770).
r_star1(_7764,_7770) :- a(1,_7764,_8782),a(2,_8782,_8832),a(3,_8832,_8882),q(3,_8882,_7770).
r_star2(_7824,_7770) :- not_p(1,_7824,_7770).
r_star2(_7824,_7770) :- p(1,_7824,_9212),not_p(2,_9212,_7770).
r_star2(_7824,_7770) :- p(1,_7824,_9366),p(2,_9366,_9416),not_p(3,_9416,_7770).
not_r(_7764,_7770) :- copy_term([],[]),r_star1(_7764,_7824),copy_term([],[]),r_star2(_7824,_7770).

false_star1 :- (p(_9566,[],_9728),not_q(_9566,_9728,_9806)),assertICs(_9806).

not_false :- false_star1.
:- not_false.
