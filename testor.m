groupDesig = { 'SM', 'LM', 'TF' };
groupNames = { 'Small Macaron', 'Large Macaron', 'Truck Filter' };

heightDesig = { 'S', 'T', 'V' }; 
heightNames = { 'Short', 'Tall', 'Vende' };
heightValues = [ 0.75, 3.0, 4 ];

foamDesig = { 'NO', 'SO', '1O', '1C', '2C', '3O', '3C', '3P', '3S' }; 
foamNames = { 'No Foam', '3/4” foam, open', '1” foam, open', '1” foam, closed', '2” foam, closed', '3” foam, open', '3” foam, closed', '3” foam, pink', '3” foam, stiff' };
foamValues = [ 0, 0.75, 1, 1, 2, 3, 3, 3, 3 ];

meshParts = { 'IN', 'IF', 'IM', 'IL', 'ON', 'OF', 'OM', 'OL', 'MY', 'MN' };
meshPartNames = { 'Inner None', 'Inner Fine', 'Inner Medium', 'Inner Large', 'Outer None', 'Outer Fine', 'Outer Medium', 'Outer Large', 'Mesh Yes', 'Mesh No' };
meshDesig = { 'INONMN', 'INOFMN', 'INOMMN', 'INOLMN', 'IFONMN', 'IFOFMN', 'IFOMMN', 'IFOLMN', 'IMONMN', 'IMOFMN', 'IMOMMN', 'IMOLMN', 'ILONMN', 'ILOFMN', 'ILOMMN', 'ILOLMN','INONMY', 'INOFMY', 'INOMMY', 'INOLMY', 'IFONMY', 'IFOFMY', 'IFOMMY', 'IFOLMY', 'IMONMY', 'IMOFMY', 'IMOMMY', 'IMOLMY', 'ILONMY', 'ILOFMY', 'ILOMMY','ILOLMY'};

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

