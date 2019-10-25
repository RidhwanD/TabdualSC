r(_5000,_5016,_5022) :- insert_abducible(r(_5000),_5016,_5022).
not_r(_5102,_5130,_5136) :- insert_abducible(not r(_5102),_5130,_5136).
s(_5216,_5232,_5238) :- insert_abducible(s(_5216),_5232,_5238).
not_s(_5318,_5346,_5352) :- insert_abducible(not s(_5318),_5346,_5352).
:- table p_ab/2.
p_ab(0,[]).

p(_5566,_5572,_5578) :- p_ab(_5566,_5638),produce_context(_5578,_5572,_5638).
p_star1(_5700,_5812,_5812) :- [_5700]\=[0].
not_p(_5700,_5718,_5724) :- p_star1(_5700,_5718,_5724).

:- table q_ab/2.
q_ab(_5940,[r(_5940)]).

q_ab(_5910,_6128) :- p(_5910,[s(_5910)],_6128).

q(_6202,_6208,_6214) :- q_ab(_6202,_6274),produce_context(_6214,_6208,_6274).
q_star1(_6336,_6490,_6490) :- [_6336]\=[_5940].
q_star1(_5940,_6354,_6360) :- not_r(_5940,_6354,_6360).
q_star2(_6336,_6726,_6726) :- [_6336]\=[_5910].
q_star2(_5910,_6428,_6360) :- not_p(_5910,_6428,_6360).
q_star2(_5910,_6428,_6360) :- p(_5910,_6428,_6944),not_s(_5910,_6944,_6360).
not_q(_6336,_6354,_6360) :- copy_term([_6336],[_6416]),q_star1(_6416,_6354,_6428),copy_term([_6336],[_6652]),q_star2(_6652,_6428,_6360).

false_star1(_7110,_7116) :- not_r(0,_7110,_7116).
not_false(_7110,_7116) :- false_star1(_7110,_7116).

