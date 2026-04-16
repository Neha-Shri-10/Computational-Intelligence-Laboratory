% ============JAWAHARLAL NEHRU=============
% --- Genders: Male ---
male(gangadhar).
male(motilal).
male(jawaharlal).
male(ranjit_pandit).
male(raja_hutheesing).
male(feroze_gandhi).
male(rajiv_gandhi).
male(sanjay_gandhi).
male(ashok_mehta).
male(gautam_sahgal).
male(en_mangat_rai).
male(avtar_dar).
male(rahul_gandhi).
male(varun_gandhi).
male(robert_vadra).
male(raihan_vadra).

% --- Genders: Female ---
female(jiorani).
female(swarup_rani).
female(kamala_nehru).
female(vijayalakshmi_pandit).
female(krishna_hutheesing).
female(indira_gandhi).
female(sonia_gandhi).
female(maneka_gandhi).
female(chandralekha_mehta).
female(nayantara_sahgal).
female(rita_dar).
female(priyanka_gandhi_vadra).
female(yamini_gandhi).
female(miraya_vadra).

% --- Spouses: spouse(Husband, Wife) ---
spouse(gangadhar, jiorani).
spouse(motilal, swarup_rani).
spouse(jawaharlal, kamala_nehru).
spouse(ranjit_pandit, vijayalakshmi_pandit).
spouse(raja_hutheesing, krishna_hutheesing).
spouse(feroze_gandhi, indira_gandhi).
spouse(rajiv_gandhi, sonia_gandhi).
spouse(sanjay_gandhi, maneka_gandhi).
spouse(ashok_mehta, chandralekha_mehta).
spouse(gautam_sahgal, nayantara_sahgal).
spouse(en_mangat_rai, nayantara_sahgal).
spouse(avtar_dar, rita_dar).
spouse(robert_vadra, priyanka_gandhi_vadra).
spouse(varun_gandhi, yamini_gandhi).

% --- Parent-Child Relationships ---
parent(gangadhar, motilal).
parent(jiorani, motilal).
parent(motilal, jawaharlal).
parent(swarup_rani, jawaharlal).
parent(motilal, vijayalakshmi_pandit).
parent(swarup_rani, vijayalakshmi_pandit).
parent(motilal, krishna_hutheesing).
parent(swarup_rani, krishna_hutheesing).
parent(jawaharlal, indira_gandhi).
parent(kamala_nehru, indira_gandhi).
parent(vijayalakshmi_pandit, chandralekha_mehta).
parent(ranjit_pandit, chandralekha_mehta).
parent(vijayalakshmi_pandit, nayantara_sahgal).
parent(ranjit_pandit, nayantara_sahgal).
parent(vijayalakshmi_pandit, rita_dar).
parent(ranjit_pandit, rita_dar).
parent(indira_gandhi, rajiv_gandhi).
parent(feroze_gandhi, rajiv_gandhi).
parent(indira_gandhi, sanjay_gandhi).
parent(feroze_gandhi, sanjay_gandhi).
parent(rajiv_gandhi, rahul_gandhi).
parent(sonia_gandhi, rahul_gandhi).
parent(rajiv_gandhi, priyanka_gandhi_vadra).
parent(sonia_gandhi, priyanka_gandhi_vadra).
parent(sanjay_gandhi, varun_gandhi).
parent(maneka_gandhi, varun_gandhi).
parent(priyanka_gandhi_vadra, raihan_vadra).
parent(robert_vadra, raihan_vadra).
parent(priyanka_gandhi_vadra, miraya_vadra).
parent(robert_vadra, miraya_vadra).

% --- Rules ---
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
husband(X, Y) :- spouse(X, Y).
wife(X, Y) :- spouse(Y, X).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
