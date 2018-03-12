groupDesig = { 'SM', 'LM', 'TM', 'RC' }; 
groupNames = { 'Small Macaron', 'Large Macaron', 'Truck Muffler', 'Rycote Cyclone' };

heightDesig = { 'S', 'T', 'V' };
heightNames = { 'Short', 'Tall', 'Vende' };
heightValues = [ 0.75, 3.0, 4 ];

foamDesig = { 'NO', 'SO', '1O', '1C', '2C', '3O', '3C', '3P', '3S', '1S', 'SF', '1F', '2F', '3F', '1FS', '2FS', '3FS', 'SFS', 'SFO' }; 
foamNames = { 'No Foam', '3/4” foam, open', '1” foam, open', '1” foam, closed', '2” foam, closed', '3” foam, open', '3” foam, closed', '3” foam, pink', '3” foam, stiff', '1” foam, stiff', '3/4” foam filled', '1” foam filled', '2” foam filled', '3” foam filled' , '1” foam filled stiff', '2” foam filled stiff', '3” foam filled stiff', '0.75” foam filled stiff', 'olson out' };
foamValues = [ 0, 0.75, 1, 1, 2, 3, 3, 3, 3, 1, 0.75, 1, 2, 3, 1, 2, 3, 0.75, 0.5 ];

meshParts = { 'IN', 'IF', 'IM', 'IL', 'ON', 'OF', 'OM', 'OL', 'MY', 'MN', '3L', 'DC' };
meshPartNames = { 'Inner None', 'Inner Fine', 'Inner Medium', 'Inner Large', 'Outer None', 'Outer Fine', 'Outer Medium', 'Outer Large', 'Mesh Yes', 'Mesh No', '3 Layer', 'Dead Cat' };
meshDesig = { 'INONMN', 'INOFMN', 'INOMMN', 'INOLMN', 'IFONMN', 'IFOFMN', 'IFOMMN', 'IFOLMN', 'IMONMN', 'IMOFMN', 'IMOMMN', 'IMOLMN', 'ILONMN', 'ILOFMN', 'ILOMMN', 'ILOLMN','INONMY', 'INOFMN', 'INOMMY', 'INOLMY', 'IFONMY', 'IFOFMY', 'IFOMMY', 'IFOLMY', 'IMONMY', 'IMOFMY', 'IMOMMY', 'IMOLMY', 'ILONMY', 'ILOFMY', 'ILOMMY','ILOLMY','3LAYER','DEADCAT'};

windDesig = { '00', '45', '60' };
windSettings = { '0Hz', '45Hz', '60Hz' };
windSpeeds = [ 0, 26, 32 ];

% e.g.
% variantName = { 'Large Macaron, Tall, 3” foam closed, Inner Fine, Outer Large, Nylon No, 45Hz, 2018-02-27 08:00:00' };

% Large Macaron
% Tall variants
varInitLM{1} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{24}, windDesig{2} };
varInitLM{2} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{24}, windDesig{3} };
varInitLM{3} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{1}, windDesig{2} };
varInitLM{4} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{1}, windDesig{3} };
varInitLM{5} = { groupDesig{2}, heightDesig{2}, foamDesig{1}, meshDesig{24}, windDesig{2} };
varInitLM{6} = { groupDesig{2}, heightDesig{2}, foamDesig{1}, meshDesig{24}, windDesig{3} };
varInitLM{7} = { groupDesig{2}, heightDesig{2}, foamDesig{4}, meshDesig{24}, windDesig{2} };
varInitLM{8} = { groupDesig{2}, heightDesig{2}, foamDesig{4}, meshDesig{24}, windDesig{3} };
varInitLM{9} = { groupDesig{2}, heightDesig{2}, foamDesig{4}, meshDesig{1}, windDesig{2} };
varInitLM{10} = { groupDesig{2}, heightDesig{2}, foamDesig{4}, meshDesig{1}, windDesig{3} };
% Short variants
varInitLM{11} = { groupDesig{2}, heightDesig{1}, foamDesig{7}, meshDesig{24}, windDesig{2} };
varInitLM{12} = { groupDesig{2}, heightDesig{1}, foamDesig{7}, meshDesig{24}, windDesig{3} };
varInitLM{13} = { groupDesig{2}, heightDesig{1}, foamDesig{7}, meshDesig{1}, windDesig{2} };
varInitLM{14} = { groupDesig{2}, heightDesig{1}, foamDesig{7}, meshDesig{1}, windDesig{3} };
varInitLM{15} = { groupDesig{2}, heightDesig{1}, foamDesig{1}, meshDesig{24}, windDesig{2} };
varInitLM{16} = { groupDesig{2}, heightDesig{1}, foamDesig{1}, meshDesig{24}, windDesig{3} };
varInitLM{17} = { groupDesig{2}, heightDesig{1}, foamDesig{4}, meshDesig{24}, windDesig{2} };
varInitLM{18} = { groupDesig{2}, heightDesig{1}, foamDesig{4}, meshDesig{24}, windDesig{3} };
varInitLM{19} = { groupDesig{2}, heightDesig{1}, foamDesig{4}, meshDesig{1}, windDesig{2} };
varInitLM{20} = { groupDesig{2}, heightDesig{1}, foamDesig{4}, meshDesig{1}, windDesig{3} };
% Walk ons
varInitLM{21} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{27}, windDesig{2} };
varInitLM{22} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{27}, windDesig{3} };
varInitLM{23} = { groupDesig{2}, heightDesig{2}, foamDesig{8}, meshDesig{27}, windDesig{2} };
varInitLM{24} = { groupDesig{2}, heightDesig{2}, foamDesig{8}, meshDesig{27}, windDesig{3} };
varInitLM{25} = { groupDesig{2}, heightDesig{2}, foamDesig{8}, meshDesig{1}, windDesig{2} };
varInitLM{26} = { groupDesig{2}, heightDesig{2}, foamDesig{8}, meshDesig{1}, windDesig{3} };
varInitLM{27} = { groupDesig{2}, heightDesig{2}, foamDesig{9}, meshDesig{24}, windDesig{2} };
varInitLM{28} = { groupDesig{2}, heightDesig{2}, foamDesig{9}, meshDesig{24}, windDesig{3} };
varInitLM{29} = { groupDesig{2}, heightDesig{2}, foamDesig{9}, meshDesig{1}, windDesig{2} };
varInitLM{30} = { groupDesig{2}, heightDesig{2}, foamDesig{9}, meshDesig{1}, windDesig{3} };
varInitLM{31} = { groupDesig{2}, heightDesig{2}, foamDesig{12}, meshDesig{24}, windDesig{2} };
varInitLM{32} = { groupDesig{2}, heightDesig{2}, foamDesig{12}, meshDesig{24}, windDesig{3} };
varInitLM{33} = { groupDesig{2}, heightDesig{2}, foamDesig{13}, meshDesig{24}, windDesig{2} };
varInitLM{34} = { groupDesig{2}, heightDesig{2}, foamDesig{13}, meshDesig{24}, windDesig{3} };
varInitLM{35} = { groupDesig{2}, heightDesig{2}, foamDesig{14}, meshDesig{24}, windDesig{2} };
varInitLM{36} = { groupDesig{2}, heightDesig{2}, foamDesig{14}, meshDesig{24}, windDesig{3} };
varInitLM{37} = { groupDesig{2}, heightDesig{2}, foamDesig{14}, meshDesig{5}, windDesig{2} };
varInitLM{38} = { groupDesig{2}, heightDesig{2}, foamDesig{14}, meshDesig{5}, windDesig{3} };
varInitLM{39} = { groupDesig{2}, heightDesig{2}, foamDesig{13}, meshDesig{5}, windDesig{2} };
varInitLM{40} = { groupDesig{2}, heightDesig{2}, foamDesig{13}, meshDesig{5}, windDesig{3} };
varInitLM{41} = { groupDesig{2}, heightDesig{2}, foamDesig{12}, meshDesig{5}, windDesig{2} };
varInitLM{42} = { groupDesig{2}, heightDesig{2}, foamDesig{12}, meshDesig{5}, windDesig{3} };

varInitLM{43} = { groupDesig{2}, heightDesig{2}, foamDesig{15}, meshDesig{24}, windDesig{2} };
varInitLM{44} = { groupDesig{2}, heightDesig{2}, foamDesig{15}, meshDesig{24}, windDesig{3} };
varInitLM{45} = { groupDesig{2}, heightDesig{2}, foamDesig{16}, meshDesig{24}, windDesig{2} };
varInitLM{46} = { groupDesig{2}, heightDesig{2}, foamDesig{16}, meshDesig{24}, windDesig{3} };
varInitLM{47} = { groupDesig{2}, heightDesig{2}, foamDesig{17}, meshDesig{24}, windDesig{2} };
varInitLM{48} = { groupDesig{2}, heightDesig{2}, foamDesig{17}, meshDesig{24}, windDesig{3} };
varInitLM{49} = { groupDesig{2}, heightDesig{2}, foamDesig{17}, meshDesig{5}, windDesig{2} };
varInitLM{50} = { groupDesig{2}, heightDesig{2}, foamDesig{17}, meshDesig{5}, windDesig{3} };
varInitLM{51} = { groupDesig{2}, heightDesig{2}, foamDesig{16}, meshDesig{5}, windDesig{2} };
varInitLM{52} = { groupDesig{2}, heightDesig{2}, foamDesig{16}, meshDesig{5}, windDesig{3} };
varInitLM{53} = { groupDesig{2}, heightDesig{2}, foamDesig{15}, meshDesig{5}, windDesig{2} };
varInitLM{54} = { groupDesig{2}, heightDesig{2}, foamDesig{15}, meshDesig{5}, windDesig{3} };


% Small Macaron
% Tall variants
varInitSM{1} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{24}, windDesig{2} };
varInitSM{2} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{24}, windDesig{3} };
varInitSM{3} = { groupDesig{1}, heightDesig{1}, foamDesig{1}, meshDesig{24}, windDesig{2} };
varInitSM{4} = { groupDesig{1}, heightDesig{1}, foamDesig{1}, meshDesig{24}, windDesig{3} };
varInitSM{5} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{1}, windDesig{2} };
varInitSM{6} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{1}, windDesig{3} };
% Short variants	
varInitSM{7} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{24}, windDesig{2} };
varInitSM{8} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{24}, windDesig{3} };
varInitSM{9} = { groupDesig{1}, heightDesig{2}, foamDesig{1}, meshDesig{24}, windDesig{2} };
varInitSM{10} = { groupDesig{1}, heightDesig{2}, foamDesig{1}, meshDesig{24}, windDesig{3} };
varInitSM{11} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{1}, windDesig{2} };
varInitSM{12} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{1}, windDesig{3} };
% Walk ons
varInitSM{13} = { groupDesig{1}, heightDesig{2}, foamDesig{10}, meshDesig{24}, windDesig{2} };
varInitSM{14} = { groupDesig{1}, heightDesig{2}, foamDesig{10}, meshDesig{24}, windDesig{3} };
varInitSM{15} = { groupDesig{1}, heightDesig{2}, foamDesig{10}, meshDesig{1}, windDesig{2} };
varInitSM{16} = { groupDesig{1}, heightDesig{2}, foamDesig{10}, meshDesig{1}, windDesig{3} };
varInitSM{17} = { groupDesig{1}, heightDesig{2}, foamDesig{11}, meshDesig{1}, windDesig{2} };
varInitSM{18} = { groupDesig{1}, heightDesig{2}, foamDesig{11}, meshDesig{1}, windDesig{3} };

varInitSM{19} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{18}, windDesig{2} };
varInitSM{20} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{18}, windDesig{3} };
varInitSM{21} = { groupDesig{1}, heightDesig{2}, foamDesig{18}, meshDesig{18}, windDesig{2} };
varInitSM{22} = { groupDesig{1}, heightDesig{2}, foamDesig{18}, meshDesig{18}, windDesig{3} };
varInitSM{23} = { groupDesig{1}, heightDesig{2}, foamDesig{19}, meshDesig{18}, windDesig{2} };
varInitSM{24} = { groupDesig{1}, heightDesig{2}, foamDesig{19}, meshDesig{18}, windDesig{3} };


varInitTM{1} = { groupDesig{3}, heightDesig{3}, foamDesig{5}, meshDesig{18}, windDesig{2} };
varInitTM{2} = { groupDesig{3}, heightDesig{3}, foamDesig{5}, meshDesig{18}, windDesig{3} };
varInitTM{3} = { groupDesig{3}, heightDesig{3}, foamDesig{4}, meshDesig{18}, windDesig{2} };
varInitTM{4} = { groupDesig{3}, heightDesig{3}, foamDesig{4}, meshDesig{18}, windDesig{3} };
varInitTM{5} = { groupDesig{3}, heightDesig{3}, foamDesig{5}, meshDesig{33}, windDesig{2} };
varInitTM{6} = { groupDesig{3}, heightDesig{3}, foamDesig{5}, meshDesig{33}, windDesig{3} };
varInitTM{7} = { groupDesig{3}, heightDesig{3}, foamDesig{4}, meshDesig{33}, windDesig{2} };
varInitTM{8} = { groupDesig{3}, heightDesig{3}, foamDesig{4}, meshDesig{33}, windDesig{3} };
varInitTM{9} = { groupDesig{3}, heightDesig{3}, foamDesig{1}, meshDesig{1}, windDesig{2} };
varInitTM{10} = { groupDesig{3}, heightDesig{3}, foamDesig{1}, meshDesig{1}, windDesig{3} };

varInitRC{1} = { groupDesig{4}, heightDesig{3}, foamDesig{1}, meshDesig{12}, windDesig{2} };
varInitRC{2} = { groupDesig{4}, heightDesig{3}, foamDesig{1}, meshDesig{12}, windDesig{3} };
varInitRC{3} = { groupDesig{4}, heightDesig{3}, foamDesig{1}, meshDesig{1}, windDesig{2} };
varInitRC{4} = { groupDesig{4}, heightDesig{3}, foamDesig{1}, meshDesig{1}, windDesig{3} };

