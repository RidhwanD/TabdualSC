a(_5330,_5346,_5352) :- insert_abducible(a(_5330),_5346,_5352).
not_a(_5432,_5460,_5466) :- insert_abducible(not a(_5432),_5460,_5466).
b(_5546,_5562,_5568) :- insert_abducible(b(_5546),_5562,_5568).
not_b(_5648,_5676,_5682) :- insert_abducible(not b(_5648),_5676,_5682).
c(_5762,_5778,_5784) :- insert_abducible(c(_5762),_5778,_5784).
not_c(_5864,_5892,_5898) :- insert_abducible(not c(_5864),_5892,_5898).
p_ab(_6030,[a(_6030)]).

:- table p_ab/2.
p(_6158,_6164,_6170) :- p_ab(_6158,_6230),produce_context(_6170,_6164,_6230).
p_star1(_6292,_6404,_6404) :- [_6292]\=[_6030].
p_star1(_6030,_6310,_6316) :- not_a(_6030,_6310,_6316).
not_p(_6292,_6310,_6316) :- p_star1(_6292,_6310,_6316).

q_ab(_6608,[b(_6608)]).

:- table q_ab/2.
q(_6736,_6742,_6748) :- q_ab(_6736,_6808),produce_context(_6748,_6742,_6808).
q_star1(_6870,_6982,_6982) :- [_6870]\=[_6608].
q_star1(_6608,_6888,_6894) :- not_b(_6608,_6888,_6894).
not_q(_6870,_6888,_6894) :- q_star1(_6870,_6888,_6894).

t_ab(_7186,[c(_7186)]).

:- table t_ab/2.
t(_7314,_7320,_7326) :- t_ab(_7314,_7386),produce_context(_7326,_7320,_7386).
t_star1(_7448,_7560,_7560) :- [_7448]\=[_7186].
t_star1(_7186,_7466,_7472) :- not_c(_7186,_7466,_7472).
not_t(_7448,_7466,_7472) :- t_star1(_7448,_7466,_7472).

r_ab(_8108) :- not_q(1,[a(1),a(2)],_8030),not_q(2,_8030,_8108).

r_ab(_8266) :- p(1,[],_8222),p(2,_8222,_8266).

:- table r_ab/1.
r(_8338,_8344) :- r_ab(_8386),produce_context(_8344,_8338,_8386).
r_star1(_8452,_8458) :- not_a(1,_8452,_8458).
r_star1(_8452,_8458) :- a(1,_8452,_8742),q(1,_8742,_8458).
r_star1(_8452,_8458) :- a(1,_8452,_8884),not_a(2,_8884,_8458).
r_star1(_8452,_8458) :- a(1,_8452,_9044),a(2,_9044,_9094),q(2,_9094,_8458).
r_star2(_8512,_8458) :- not_p(1,_8512,_8458).
r_star2(_8512,_8458) :- p(1,_8512,_9424),not_p(2,_9424,_8458).
not_r(_8452,_8458) :- copy_term([],[]),r_star1(_8452,_8512),copy_term([],[]),r_star2(_8512,_8458).

false_star1 :- (p(_9574,[],_9736),not_q(_9574,_9736,_9814)),assertICs(_9814).

not_false :- false_star1.
:- not_false.
