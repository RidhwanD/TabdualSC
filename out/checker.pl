q(_962,_978,_984) :- insert_abducible(q(_962),_978,_984).
not_q(_1064,_1092,_1098) :- insert_abducible(not q(_1064),_1092,_1098).
r(_1178,_1194,_1200) :- insert_abducible(r(_1178),_1194,_1200).
not_r(_1280,_1308,_1314) :- insert_abducible(not r(_1280),_1308,_1314).
s_ab(_1446,[r(_1446)]).

:- table s_ab/2.
s(_1562,_1568,_1574) :- s_ab(_1562,_1634),produce_context(_1574,_1568,_1634).
s_star1(_1696,_1808,_1808) :- [_1696]\=[_1446].
s_star1(_1446,_1714,_1720) :- not_r(_1446,_1714,_1720).
not_s(_1696,_1714,_1720) :- s_star1(_1696,_1714,_1720).

p_ab(_2012,[not q(_2012),r(_2012)]).

:- table p_ab/2.
p(_2184,_2190,_2196) :- p_ab(_2184,_2256),produce_context(_2196,_2190,_2256).
p_star1(_2318,_2430,_2430) :- [_2318]\=[_2012].
p_star1(_2012,_2336,_2342) :- q(_2012,_2336,_2342).
p_star1(_2012,_2336,_2342) :- not_r(_2012,_2336,_2342).
not_p(_2318,_2336,_2342) :- p_star1(_2318,_2336,_2342).

false_star1(_2774,_2780) :- not_s(_2748,_2774,_2780).
false_star1(_2774,_2780) :- s(_2748,_2774,_3028),not_q(_2748,_3028,_2780).
not_false(_2774,_2780) :- false_star1(_2774,_2780).
