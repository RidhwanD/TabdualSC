s1.
s2.
s3.
s4.
s5.
s1(_5124,_5124) :- s1.
not_s1(_5166,_5166) :- not s1.
s2(_5220,_5220) :- s2.
not_s2(_5262,_5262) :- not s2.
s3(_5316,_5316) :- s3.
not_s3(_5358,_5358) :- not s3.
s4(_5412,_5412) :- s4.
not_s4(_5454,_5454) :- not s4.
s5(_5508,_5508) :- s5.
not_s5(_5550,_5550) :- not s5.
q1(_6430,_6436) :- insert_abducible(q1,_6430,_6436).
not_q1(_6526,_6532) :- insert_abducible(not q1,_6526,_6532).
q2(_6610,_6616) :- insert_abducible(q2,_6610,_6616).
not_q2(_6706,_6712) :- insert_abducible(not q2,_6706,_6712).
q3(_6790,_6796) :- insert_abducible(q3,_6790,_6796).
not_q3(_6886,_6892) :- insert_abducible(not q3,_6886,_6892).
q4(_6970,_6976) :- insert_abducible(q4,_6970,_6976).
not_q4(_7066,_7072) :- insert_abducible(not q4,_7066,_7072).
q5(_7150,_7156) :- insert_abducible(q5,_7150,_7156).
not_q5(_7246,_7252) :- insert_abducible(not q5,_7246,_7252).





:- table p1_ab/1.
p1_ab(_8028) :- r1([q1],_8028).

p1(_8080,_8086) :- p1_ab(_8128),produce_context(_8086,_8080,_8128).

:- table p2_ab/1.
p2_ab(_8464) :- r2([q2],_8464).

p2(_8516,_8522) :- p2_ab(_8564),produce_context(_8522,_8516,_8564).

:- table p3_ab/1.
p3_ab(_8900) :- r3([q3],_8900).

p3(_8952,_8958) :- p3_ab(_9000),produce_context(_8958,_8952,_9000).

:- table p4_ab/1.
p4_ab(_9336) :- r4([q4],_9336).

p4(_9388,_9394) :- p4_ab(_9436),produce_context(_9394,_9388,_9436).

:- table p5_ab/1.
p5_ab(_9772) :- r5([q5],_9772).

p5(_9824,_9830) :- p5_ab(_9872),produce_context(_9830,_9824,_9872).


:- table a_ab/1.
a_ab(_10942) :- p1([],_10804),p2(_10804,_10840),p3(_10840,_10876),p4(_10876,_10912),p5(_10912,_10942).

a(_10994,_11000) :- a_ab(_11042),produce_context(_11000,_10994,_11042).
r1 :- s1.
r1(_11174,_11174) :- r1.
r2 :- s2.
r2(_11272,_11272) :- r2.
r3 :- s3.
r3(_11370,_11370) :- r3.
r4 :- s4.
r4(_11468,_11468) :- r4.
r5 :- s5.
r5(_11566,_11566) :- r5.
not_false(_11648,_11648).


