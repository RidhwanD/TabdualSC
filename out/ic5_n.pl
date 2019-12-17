a(_5398,_5414,_5420) :- insert_abducible(a(_5398),_5414,_5420).
not_a(_5500,_5528,_5534) :- insert_abducible(not a(_5500),_5528,_5534).
b(_5614,_5630,_5636) :- insert_abducible(b(_5614),_5630,_5636).
not_b(_5716,_5744,_5750) :- insert_abducible(not b(_5716),_5744,_5750).
p_ab(_5882,[a(_5882)]).

:- table p_ab/2.
p(_5998,_6004,_6010) :- p_ab(_5998,_6070),produce_context(_6010,_6004,_6070).
p_star1(_6132,_6244,_6244) :- [_6132]\=[_5882].
p_star1(_5882,_6150,_6156) :- not_a(_5882,_6150,_6156).
not_p(_6132,_6150,_6156) :- p_star1(_6132,_6150,_6156).

q_ab(_6448,[b(_6448)]).

:- table q_ab/2.
q(_6564,_6570,_6576) :- q_ab(_6564,_6636),produce_context(_6576,_6570,_6636).
q_star1(_6698,_6810,_6810) :- [_6698]\=[_6448].
q_star1(_6448,_6716,_6722) :- not_b(_6448,_6716,_6722).
not_q(_6698,_6716,_6722) :- q_star1(_6698,_6716,_6722).

r_ab(_7868) :- not_q(1,[a(1),a(2),a(3),a(4),a(5)],_7538),not_q(2,_7538,_7622),not_q(3,_7622,_7706),not_q(4,_7706,_7790),not_q(5,_7790,_7868).

r_ab(_8230) :- p(1,[],_8036),p(2,_8036,_8086),p(3,_8086,_8136),p(4,_8136,_8186),p(5,_8186,_8230).

:- table r_ab/1.
r(_8302,_8308) :- r_ab(_8350),produce_context(_8308,_8302,_8350).
r_star1(_8416,_8422) :- not_a(1,_8416,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_8706),q(1,_8706,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_8848),not_a(2,_8848,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_9008),a(2,_9008,_9058),q(2,_9058,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_9212),a(2,_9212,_9262),not_a(3,_9262,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_9434),a(2,_9434,_9484),a(3,_9484,_9534),q(3,_9534,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_9700),a(2,_9700,_9750),a(3,_9750,_9800),not_a(4,_9800,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_9984),a(2,_9984,_10034),a(3,_10034,_10084),a(4,_10084,_10134),q(4,_10134,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_10312),a(2,_10312,_10362),a(3,_10362,_10412),a(4,_10412,_10462),not_a(5,_10462,_8422).
r_star1(_8416,_8422) :- a(1,_8416,_10658),a(2,_10658,_10708),a(3,_10708,_10758),a(4,_10758,_10808),a(5,_10808,_10858),q(5,_10858,_8422).
r_star2(_8476,_8422) :- not_p(1,_8476,_8422).
r_star2(_8476,_8422) :- p(1,_8476,_11188),not_p(2,_11188,_8422).
r_star2(_8476,_8422) :- p(1,_8476,_11342),p(2,_11342,_11392),not_p(3,_11392,_8422).
r_star2(_8476,_8422) :- p(1,_8476,_11552),p(2,_11552,_11602),p(3,_11602,_11652),not_p(4,_11652,_8422).
r_star2(_8476,_8422) :- p(1,_8476,_11818),p(2,_11818,_11868),p(3,_11868,_11918),p(4,_11918,_11968),not_p(5,_11968,_8422).
not_r(_8416,_8422) :- copy_term([],[]),r_star1(_8416,_8476),copy_term([],[]),r_star2(_8476,_8422).

false_star1(_12414,_12420) :- (p(_12118,[],_12304),not_q(_12118,_12304,_12382)),validate_negation(_12382,_12414,_12420).

not_false(_12148,_12154) :- false_star1(_12148,_12154).

