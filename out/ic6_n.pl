a(_5478,_5494,_5500) :- insert_abducible(a(_5478),_5494,_5500).
not_a(_5580,_5608,_5614) :- insert_abducible(not a(_5580),_5608,_5614).
b(_5694,_5710,_5716) :- insert_abducible(b(_5694),_5710,_5716).
not_b(_5796,_5824,_5830) :- insert_abducible(not b(_5796),_5824,_5830).
p_ab(_5962,[a(_5962)]).

:- table p_ab/2.
p(_6078,_6084,_6090) :- p_ab(_6078,_6150),produce_context(_6090,_6084,_6150).
p_star1(_6212,_6324,_6324) :- [_6212]\=[_5962].
p_star1(_5962,_6230,_6236) :- not_a(_5962,_6230,_6236).
not_p(_6212,_6230,_6236) :- p_star1(_6212,_6230,_6236).

q_ab(_6528,[b(_6528)]).

:- table q_ab/2.
q(_6644,_6650,_6656) :- q_ab(_6644,_6716),produce_context(_6656,_6650,_6716).
q_star1(_6778,_6890,_6890) :- [_6778]\=[_6528].
q_star1(_6528,_6796,_6802) :- not_b(_6528,_6796,_6802).
not_q(_6778,_6796,_6802) :- q_star1(_6778,_6796,_6802).

r_ab(_8126) :- not_q(1,[a(1),a(2),a(3),a(4),a(5),a(6)],_7712),not_q(2,_7712,_7796),not_q(3,_7796,_7880),not_q(4,_7880,_7964),not_q(5,_7964,_8048),not_q(6,_8048,_8126).

r_ab(_8556) :- p(1,[],_8312),p(2,_8312,_8362),p(3,_8362,_8412),p(4,_8412,_8462),p(5,_8462,_8512),p(6,_8512,_8556).

:- table r_ab/1.
r(_8628,_8634) :- r_ab(_8676),produce_context(_8634,_8628,_8676).
r_star1(_8742,_8748) :- not_a(1,_8742,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_9032),q(1,_9032,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_9174),not_a(2,_9174,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_9334),a(2,_9334,_9384),q(2,_9384,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_9538),a(2,_9538,_9588),not_a(3,_9588,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_9760),a(2,_9760,_9810),a(3,_9810,_9860),q(3,_9860,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_10026),a(2,_10026,_10076),a(3,_10076,_10126),not_a(4,_10126,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_10310),a(2,_10310,_10360),a(3,_10360,_10410),a(4,_10410,_10460),q(4,_10460,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_10638),a(2,_10638,_10688),a(3,_10688,_10738),a(4,_10738,_10788),not_a(5,_10788,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_10984),a(2,_10984,_11034),a(3,_11034,_11084),a(4,_11084,_11134),a(5,_11134,_11184),q(5,_11184,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_11374),a(2,_11374,_11424),a(3,_11424,_11474),a(4,_11474,_11524),a(5,_11524,_11574),not_a(6,_11574,_8748).
r_star1(_8742,_8748) :- a(1,_8742,_11782),a(2,_11782,_11832),a(3,_11832,_11882),a(4,_11882,_11932),a(5,_11932,_11982),a(6,_11982,_12032),q(6,_12032,_8748).
r_star2(_8802,_8748) :- not_p(1,_8802,_8748).
r_star2(_8802,_8748) :- p(1,_8802,_12362),not_p(2,_12362,_8748).
r_star2(_8802,_8748) :- p(1,_8802,_12516),p(2,_12516,_12566),not_p(3,_12566,_8748).
r_star2(_8802,_8748) :- p(1,_8802,_12726),p(2,_12726,_12776),p(3,_12776,_12826),not_p(4,_12826,_8748).
r_star2(_8802,_8748) :- p(1,_8802,_12992),p(2,_12992,_13042),p(3,_13042,_13092),p(4,_13092,_13142),not_p(5,_13142,_8748).
r_star2(_8802,_8748) :- p(1,_8802,_13314),p(2,_13314,_13364),p(3,_13364,_13414),p(4,_13414,_13464),p(5,_13464,_13514),not_p(6,_13514,_8748).
not_r(_8742,_8748) :- copy_term([],[]),r_star1(_8742,_8802),copy_term([],[]),r_star2(_8802,_8748).

false_star1 :- (p(_13664,[],_13826),not_q(_13664,_13826,_13904)),assertICs(_13904).

not_false :- false_star1.
:- not_false.
