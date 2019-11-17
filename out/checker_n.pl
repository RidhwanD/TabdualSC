q(_956,_972,_978) :- insert_abducible(q(_956),_972,_978).
not_q(_1058,_1086,_1092) :- insert_abducible(not q(_1058),_1086,_1092).
r(_1172,_1188,_1194) :- insert_abducible(r(_1172),_1188,_1194).
not_r(_1274,_1302,_1308) :- insert_abducible(not r(_1274),_1302,_1308).
s_ab(_1440,[r(_1440)]).

:- table s_ab/2.
s(_1556,_1562,_1568) :- s_ab(_1556,_1628),produce_context(_1568,_1562,_1628).
s_star1(_1690,_1802,_1802) :- [_1690]\=[_1440].
s_star1(_1440,_1708,_1714) :- not_r(_1440,_1708,_1714).
not_s(_1690,_1708,_1714) :- s_star1(_1690,_1708,_1714).

p_ab(_2006,[not q(_2006),r(_2006)]).

:- table p_ab/2.
p(_2178,_2184,_2190) :- p_ab(_2178,_2250),produce_context(_2190,_2184,_2250).
p_star1(_2312,_2424,_2424) :- [_2312]\=[_2006].
p_star1(_2006,_2330,_2336) :- q(_2006,_2330,_2336).
p_star1(_2006,_2330,_2336) :- not_r(_2006,_2330,_2336).
not_p(_2312,_2330,_2336) :- p_star1(_2312,_2330,_2336).

false_star1(_2974,_2980) :- s(_2742,[q(_2742)],_2942),validate_negation(_2942,_2974,_2980).

not_false(_2768,_2774) :- false_star1(_2768,_2774).
