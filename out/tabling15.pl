s1.
s2.
s3.
s4.
s5.
s6.
s7.
s8.
s9.
s10.
s11.
s12.
s13.
s14.
s15.
s1(_5530,_5530) :- s1.
not_s1(_5572,_5572) :- not s1.
s2(_5626,_5626) :- s2.
not_s2(_5668,_5668) :- not s2.
s3(_5722,_5722) :- s3.
not_s3(_5764,_5764) :- not s3.
s4(_5818,_5818) :- s4.
not_s4(_5860,_5860) :- not s4.
s5(_5914,_5914) :- s5.
not_s5(_5956,_5956) :- not s5.
s6(_6010,_6010) :- s6.
not_s6(_6052,_6052) :- not s6.
s7(_6106,_6106) :- s7.
not_s7(_6148,_6148) :- not s7.
s8(_6202,_6202) :- s8.
not_s8(_6244,_6244) :- not s8.
s9(_6298,_6298) :- s9.
not_s9(_6340,_6340) :- not s9.
s10(_6394,_6394) :- s10.
not_s10(_6436,_6436) :- not s10.
s11(_6490,_6490) :- s11.
not_s11(_6532,_6532) :- not s11.
s12(_6586,_6586) :- s12.
not_s12(_6628,_6628) :- not s12.
s13(_6682,_6682) :- s13.
not_s13(_6724,_6724) :- not s13.
s14(_6778,_6778) :- s14.
not_s14(_6820,_6820) :- not s14.
s15(_6874,_6874) :- s15.
not_s15(_6916,_6916) :- not s15.
q1(_11176,_11182) :- insert_abducible(q1,_11176,_11182).
not_q1(_11272,_11278) :- insert_abducible(not q1,_11272,_11278).
q2(_11356,_11362) :- insert_abducible(q2,_11356,_11362).
not_q2(_11452,_11458) :- insert_abducible(not q2,_11452,_11458).
q3(_11536,_11542) :- insert_abducible(q3,_11536,_11542).
not_q3(_11632,_11638) :- insert_abducible(not q3,_11632,_11638).
q4(_11716,_11722) :- insert_abducible(q4,_11716,_11722).
not_q4(_11812,_11818) :- insert_abducible(not q4,_11812,_11818).
q5(_11896,_11902) :- insert_abducible(q5,_11896,_11902).
not_q5(_11992,_11998) :- insert_abducible(not q5,_11992,_11998).
q6(_12076,_12082) :- insert_abducible(q6,_12076,_12082).
not_q6(_12172,_12178) :- insert_abducible(not q6,_12172,_12178).
q7(_12256,_12262) :- insert_abducible(q7,_12256,_12262).
not_q7(_12352,_12358) :- insert_abducible(not q7,_12352,_12358).
q8(_12436,_12442) :- insert_abducible(q8,_12436,_12442).
not_q8(_12532,_12538) :- insert_abducible(not q8,_12532,_12538).
q9(_12616,_12622) :- insert_abducible(q9,_12616,_12622).
not_q9(_12712,_12718) :- insert_abducible(not q9,_12712,_12718).
q10(_12796,_12802) :- insert_abducible(q10,_12796,_12802).
not_q10(_12892,_12898) :- insert_abducible(not q10,_12892,_12898).
q11(_12976,_12982) :- insert_abducible(q11,_12976,_12982).
not_q11(_13072,_13078) :- insert_abducible(not q11,_13072,_13078).
q12(_13156,_13162) :- insert_abducible(q12,_13156,_13162).
not_q12(_13252,_13258) :- insert_abducible(not q12,_13252,_13258).
q13(_13336,_13342) :- insert_abducible(q13,_13336,_13342).
not_q13(_13432,_13438) :- insert_abducible(not q13,_13432,_13438).
q14(_13516,_13522) :- insert_abducible(q14,_13516,_13522).
not_q14(_13612,_13618) :- insert_abducible(not q14,_13612,_13618).
q15(_13696,_13702) :- insert_abducible(q15,_13696,_13702).
not_q15(_13792,_13798) :- insert_abducible(not q15,_13792,_13798).
:- table r1_ab/1.
r1_ab(_13960) :- s1([],_13960).

r1(_14012,_14018) :- r1_ab(_14060),produce_context(_14018,_14012,_14060).

:- table r2_ab/1.
r2_ab(_14222) :- s2([],_14222).

r2(_14274,_14280) :- r2_ab(_14322),produce_context(_14280,_14274,_14322).

:- table r3_ab/1.
r3_ab(_14484) :- s3([],_14484).

r3(_14536,_14542) :- r3_ab(_14584),produce_context(_14542,_14536,_14584).

:- table r4_ab/1.
r4_ab(_14746) :- s4([],_14746).

r4(_14798,_14804) :- r4_ab(_14846),produce_context(_14804,_14798,_14846).

:- table r5_ab/1.
r5_ab(_15008) :- s5([],_15008).

r5(_15060,_15066) :- r5_ab(_15108),produce_context(_15066,_15060,_15108).

:- table r6_ab/1.
r6_ab(_15270) :- s6([],_15270).

r6(_15322,_15328) :- r6_ab(_15370),produce_context(_15328,_15322,_15370).

:- table r7_ab/1.
r7_ab(_15532) :- s7([],_15532).

r7(_15584,_15590) :- r7_ab(_15632),produce_context(_15590,_15584,_15632).

:- table r8_ab/1.
r8_ab(_15794) :- s8([],_15794).

r8(_15846,_15852) :- r8_ab(_15894),produce_context(_15852,_15846,_15894).

:- table r9_ab/1.
r9_ab(_16056) :- s9([],_16056).

r9(_16108,_16114) :- r9_ab(_16156),produce_context(_16114,_16108,_16156).

:- table r10_ab/1.
r10_ab(_16318) :- s10([],_16318).

r10(_16370,_16376) :- r10_ab(_16418),produce_context(_16376,_16370,_16418).

:- table r11_ab/1.
r11_ab(_16580) :- s11([],_16580).

r11(_16632,_16638) :- r11_ab(_16680),produce_context(_16638,_16632,_16680).

:- table r12_ab/1.
r12_ab(_16842) :- s12([],_16842).

r12(_16894,_16900) :- r12_ab(_16942),produce_context(_16900,_16894,_16942).

:- table r13_ab/1.
r13_ab(_17104) :- s13([],_17104).

r13(_17156,_17162) :- r13_ab(_17204),produce_context(_17162,_17156,_17204).

:- table r14_ab/1.
r14_ab(_17366) :- s14([],_17366).

r14(_17418,_17424) :- r14_ab(_17466),produce_context(_17424,_17418,_17466).

:- table r15_ab/1.
r15_ab(_17628) :- s15([],_17628).

r15(_17680,_17686) :- r15_ab(_17728),produce_context(_17686,_17680,_17728).

:- table p1_ab/1.
p1_ab(_18094) :- r1([q1],_18094).

p1(_18146,_18152) :- p1_ab(_18194),produce_context(_18152,_18146,_18194).

:- table p2_ab/1.
p2_ab(_18560) :- r2([q2],_18560).

p2(_18612,_18618) :- p2_ab(_18660),produce_context(_18618,_18612,_18660).

:- table p3_ab/1.
p3_ab(_19026) :- r3([q3],_19026).

p3(_19078,_19084) :- p3_ab(_19126),produce_context(_19084,_19078,_19126).

:- table p4_ab/1.
p4_ab(_19492) :- r4([q4],_19492).

p4(_19544,_19550) :- p4_ab(_19592),produce_context(_19550,_19544,_19592).

:- table p5_ab/1.
p5_ab(_19958) :- r5([q5],_19958).

p5(_20010,_20016) :- p5_ab(_20058),produce_context(_20016,_20010,_20058).

:- table p6_ab/1.
p6_ab(_20424) :- r6([q6],_20424).

p6(_20476,_20482) :- p6_ab(_20524),produce_context(_20482,_20476,_20524).

:- table p7_ab/1.
p7_ab(_20890) :- r7([q7],_20890).

p7(_20942,_20948) :- p7_ab(_20990),produce_context(_20948,_20942,_20990).

:- table p8_ab/1.
p8_ab(_21356) :- r8([q8],_21356).

p8(_21408,_21414) :- p8_ab(_21456),produce_context(_21414,_21408,_21456).

:- table p9_ab/1.
p9_ab(_21822) :- r9([q9],_21822).

p9(_21874,_21880) :- p9_ab(_21922),produce_context(_21880,_21874,_21922).

:- table p10_ab/1.
p10_ab(_22288) :- r10([q10],_22288).

p10(_22340,_22346) :- p10_ab(_22388),produce_context(_22346,_22340,_22388).

:- table p11_ab/1.
p11_ab(_22754) :- r11([q11],_22754).

p11(_22806,_22812) :- p11_ab(_22854),produce_context(_22812,_22806,_22854).

:- table p12_ab/1.
p12_ab(_23220) :- r12([q12],_23220).

p12(_23272,_23278) :- p12_ab(_23320),produce_context(_23278,_23272,_23320).

:- table p13_ab/1.
p13_ab(_23686) :- r13([q13],_23686).

p13(_23738,_23744) :- p13_ab(_23786),produce_context(_23744,_23738,_23786).

:- table p14_ab/1.
p14_ab(_24152) :- r14([q14],_24152).

p14(_24204,_24210) :- p14_ab(_24252),produce_context(_24210,_24204,_24252).

:- table p15_ab/1.
p15_ab(_24618) :- r15([q15],_24618).

p15(_24670,_24676) :- p15_ab(_24718),produce_context(_24676,_24670,_24718).

:- table a_ab/1.
a_ab(_25716) :- p1([],_25218),p2(_25218,_25254),p3(_25254,_25290),p4(_25290,_25326),p5(_25326,_25362),p6(_25362,_25398),p7(_25398,_25434),p8(_25434,_25470),p9(_25470,_25506),p10(_25506,_25542),p11(_25542,_25578),p12(_25578,_25614),p13(_25614,_25650),p14(_25650,_25686),p15(_25686,_25716).

a(_25768,_25774) :- a_ab(_25816),produce_context(_25774,_25768,_25816).

not_false(_25928,_25928).


