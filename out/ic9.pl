a(_6680,_6696,_6702) :- insert_abducible(a(_6680),_6696,_6702).
not_a(_6782,_6810,_6816) :- insert_abducible(not a(_6782),_6810,_6816).
b(_6896,_6912,_6918) :- insert_abducible(b(_6896),_6912,_6918).
not_b(_6998,_7026,_7032) :- insert_abducible(not b(_6998),_7026,_7032).
p_ab(_7164,[a(_7164)]).

:- table p_ab/2.
p(_7280,_7286,_7292) :- p_ab(_7280,_7352),produce_context(_7292,_7286,_7352).
p_star1(_7414,_7526,_7526) :- [_7414]\=[_7164].
p_star1(_7164,_7432,_7438) :- not_a(_7164,_7432,_7438).
not_p(_7414,_7432,_7438) :- p_star1(_7414,_7432,_7438).

q_ab(_7730,[b(_7730)]).

:- table q_ab/2.
q(_7846,_7852,_7858) :- q_ab(_7846,_7918),produce_context(_7858,_7852,_7918).
q_star1(_7980,_8092,_8092) :- [_7980]\=[_7730].
q_star1(_7730,_7998,_8004) :- not_b(_7730,_7998,_8004).
not_q(_7980,_7998,_8004) :- q_star1(_7980,_7998,_8004).

r_ab(_9862) :- not_q(1,[a(1),a(2),a(3),a(4),a(5),a(6),a(7),a(8),a(9)],_9196),not_q(2,_9196,_9280),not_q(3,_9280,_9364),not_q(4,_9364,_9448),not_q(5,_9448,_9532),not_q(6,_9532,_9616),not_q(7,_9616,_9700),not_q(8,_9700,_9784),not_q(9,_9784,_9862).

r_ab(_10496) :- p(1,[],_10102),p(2,_10102,_10152),p(3,_10152,_10202),p(4,_10202,_10252),p(5,_10252,_10302),p(6,_10302,_10352),p(7,_10352,_10402),p(8,_10402,_10452),p(9,_10452,_10496).

:- table r_ab/1.
r(_10568,_10574) :- r_ab(_10616),produce_context(_10574,_10568,_10616).
r_star1(_10682,_10688) :- not_a(1,_10682,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_10972),q(1,_10972,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_11114),not_a(2,_11114,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_11274),a(2,_11274,_11324),q(2,_11324,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_11478),a(2,_11478,_11528),not_a(3,_11528,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_11700),a(2,_11700,_11750),a(3,_11750,_11800),q(3,_11800,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_11966),a(2,_11966,_12016),a(3,_12016,_12066),not_a(4,_12066,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_12250),a(2,_12250,_12300),a(3,_12300,_12350),a(4,_12350,_12400),q(4,_12400,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_12578),a(2,_12578,_12628),a(3,_12628,_12678),a(4,_12678,_12728),not_a(5,_12728,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_12924),a(2,_12924,_12974),a(3,_12974,_13024),a(4,_13024,_13074),a(5,_13074,_13124),q(5,_13124,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_13314),a(2,_13314,_13364),a(3,_13364,_13414),a(4,_13414,_13464),a(5,_13464,_13514),not_a(6,_13514,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_13722),a(2,_13722,_13772),a(3,_13772,_13822),a(4,_13822,_13872),a(5,_13872,_13922),a(6,_13922,_13972),q(6,_13972,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_14174),a(2,_14174,_14224),a(3,_14224,_14274),a(4,_14274,_14324),a(5,_14324,_14374),a(6,_14374,_14424),not_a(7,_14424,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_14644),a(2,_14644,_14694),a(3,_14694,_14744),a(4,_14744,_14794),a(5,_14794,_14844),a(6,_14844,_14894),a(7,_14894,_14944),q(7,_14944,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_15158),a(2,_15158,_15208),a(3,_15208,_15258),a(4,_15258,_15308),a(5,_15308,_15358),a(6,_15358,_15408),a(7,_15408,_15458),not_a(8,_15458,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_15690),a(2,_15690,_15740),a(3,_15740,_15790),a(4,_15790,_15840),a(5,_15840,_15890),a(6,_15890,_15940),a(7,_15940,_15990),a(8,_15990,_16040),q(8,_16040,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_16266),a(2,_16266,_16316),a(3,_16316,_16366),a(4,_16366,_16416),a(5,_16416,_16466),a(6,_16466,_16516),a(7,_16516,_16566),a(8,_16566,_16616),not_a(9,_16616,_10688).
r_star1(_10682,_10688) :- a(1,_10682,_16860),a(2,_16860,_16910),a(3,_16910,_16960),a(4,_16960,_17010),a(5,_17010,_17060),a(6,_17060,_17110),a(7,_17110,_17160),a(8,_17160,_17210),a(9,_17210,_17260),q(9,_17260,_10688).
r_star2(_10742,_10688) :- not_p(1,_10742,_10688).
r_star2(_10742,_10688) :- p(1,_10742,_17590),not_p(2,_17590,_10688).
r_star2(_10742,_10688) :- p(1,_10742,_17744),p(2,_17744,_17794),not_p(3,_17794,_10688).
r_star2(_10742,_10688) :- p(1,_10742,_17954),p(2,_17954,_18004),p(3,_18004,_18054),not_p(4,_18054,_10688).
r_star2(_10742,_10688) :- p(1,_10742,_18220),p(2,_18220,_18270),p(3,_18270,_18320),p(4,_18320,_18370),not_p(5,_18370,_10688).
r_star2(_10742,_10688) :- p(1,_10742,_18542),p(2,_18542,_18592),p(3,_18592,_18642),p(4,_18642,_18692),p(5,_18692,_18742),not_p(6,_18742,_10688).
r_star2(_10742,_10688) :- p(1,_10742,_18920),p(2,_18920,_18970),p(3,_18970,_19020),p(4,_19020,_19070),p(5,_19070,_19120),p(6,_19120,_19170),not_p(7,_19170,_10688).
r_star2(_10742,_10688) :- p(1,_10742,_19354),p(2,_19354,_19404),p(3,_19404,_19454),p(4,_19454,_19504),p(5,_19504,_19554),p(6,_19554,_19604),p(7,_19604,_19654),not_p(8,_19654,_10688).
r_star2(_10742,_10688) :- p(1,_10742,_19844),p(2,_19844,_19894),p(3,_19894,_19944),p(4,_19944,_19994),p(5,_19994,_20044),p(6,_20044,_20094),p(7,_20094,_20144),p(8,_20144,_20194),not_p(9,_20194,_10688).
not_r(_10682,_10688) :- copy_term([],[]),r_star1(_10682,_10742),copy_term([],[]),r_star2(_10742,_10688).

false_star1(_20374,_20380) :- not_p(_20344,_20374,_20380).
false_star1(_20374,_20380) :- p(_20344,_20374,_20628),q(_20344,_20628,_20380).
not_false(_20374,_20380) :- false_star1(_20374,_20380).

