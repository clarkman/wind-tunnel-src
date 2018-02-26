groupDesig = { 'SM', 'LM', 'TF' };
groupNames = { 'Small Macaron', 'Large Macaron', 'Truck Filter' };

heightDesig = { 'S', 'T', 'V' }; 
heightNames = { 'Short', 'Tall', 'Vende' };
heightValues = [ 0.75, 3.0, 4 ];

foamDesig = { 'NO', 'SO', '1O', '1C', '2C', '3O', '3C' }; 
foamNames = { 'No Foam', '3/4” foam, open', '1” foam, open', '1” foam, closed', '2” foam, closed', '3” foam, open', '3” foam, closed' };
foamValues = [ 0, 0.75, 1, 1, 2, 3, 3 ];

meshParts = { 'IN', 'IF', 'IM', 'IL', 'ON', 'OF', 'OM', 'OL', 'NY', 'NN' }; 
meshPartNames = { 'Inner None', 'Inner Fine', 'Inner Medium', 'Inner Large', 'Outer None', 'Outer Fine', 'Outer Medium', 'Outer Large', 'Nylon Yes', 'Nylon No' };
meshDesig = {'INONNN','INOFNN','INOMNN','INOLNN','IFONNN','IFOFNN','IFOMNN','IFOLNN','IMONNN','IMOFNN','IMOMNN','IMOLNN','ILONNN','ILOFNN','ILOMNN','ILOLNN','INONNY','INOFNY','INOMNY','INOLNY','IFONNY','IFOFNY','IFOMNY','IFOLNY','IMONNY','IMOFNY','IMOMNY','IMOLNY','ILONNY','ILOFNY','ILOMNY','ILOLNY'};

windDesig = { '00', '45', '60' };
windSettings = { '0Hz', '45Hz', '60Hz' };
windSpeeds = [ 0, 26, 32 ];

% e.g.
variantName = { 'Large Macaron, Tall, 3” foam closed, Inner Fine, Outer Large, Nylon No, 45Hz, 2018-02-27 08:00:00' };

varInitSM{1} = { groupDesig{1}, heightDesig{1}, foamDesig{7}, meshDesig{8}, windDesig{2} };
varInitSM{2} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{8}, windDesig{3} };
varInitSM{3} = { groupDesig{1}, heightDesig{1}, foamDesig{1}, meshDesig{8}, windDesig{2} };
varInitSM{4} = { groupDesig{1}, heightDesig{1}, foamDesig{1}, meshDesig{8}, windDesig{3} };
varInitSM{5} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{1}, windDesig{2} };
varInitSM{6} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{1}, windDesig{3} };
varInitSM{7} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{24}, windDesig{2} };
varInitSM{8} = { groupDesig{1}, heightDesig{1}, foamDesig{2}, meshDesig{24}, windDesig{3} };
varInitSM{9} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{8}, windDesig{2} };
varInitSM{10} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{8}, windDesig{3} };
varInitSM{11} = { groupDesig{1}, heightDesig{2}, foamDesig{1}, meshDesig{8}, windDesig{2} };
varInitSM{12} = { groupDesig{1}, heightDesig{2}, foamDesig{1}, meshDesig{8}, windDesig{3} };
varInitSM{13} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{1}, windDesig{2} };
varInitSM{14} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{1}, windDesig{3} };
varInitSM{15} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{24}, windDesig{2} };
varInitSM{16} = { groupDesig{1}, heightDesig{2}, foamDesig{2}, meshDesig{24}, windDesig{3} };

plotAB( varInitSM{1}, varInitSM{3}, 1 ); %1
plotAB( varInitSM{2}, varInitSM{4}, 2 ); %2
plotAB( varInitSM{1}, varInitSM{5}, 3 ); %3
plotAB( varInitSM{2}, varInitSM{6}, 4 ); %4
plotAB( varInitSM{1}, varInitSM{7}, 5 ); %5
plotAB( varInitSM{2}, varInitSM{8}, 6 ); %6
plotAB( varInitSM{1}, varInitSM{9}, 7 ); %7
plotAB( varInitSM{2}, varInitSM{10}, 8 ); %8
plotAB( varInitSM{9}, varInitSM{11}, 9 ); %9
plotAB( varInitSM{10}, varInitSM{12}, 10 ); %10
plotAB( varInitSM{9}, varInitSM{13}, 11 ); %11
plotAB( varInitSM{10}, varInitSM{14}, 12 ); %12
plotAB( varInitSM{13}, varInitSM{5}, 13 ); %13
plotAB( varInitSM{14}, varInitSM{6}, 14 ); %14
plotAB( varInitSM{11}, varInitSM{3}, 15 ); %15
plotAB( varInitSM{12}, varInitSM{4}, 16 ); %16
plotAB( varInitSM{15}, varInitSM{9}, 17 ); %17
plotAB( varInitSM{16}, varInitSM{10}, 18 ); %18

% LM Starts with foam variants 
varInitLM{1} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{8}, windDesig{2} };
varInitLM{2} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{8}, windDesig{3} }; 
varInitLM{3} = { groupDesig{2}, heightDesig{2}, foamDesig{6}, meshDesig{8}, windDesig{2} }; 
varInitLM{4} = { groupDesig{2}, heightDesig{2}, foamDesig{6}, meshDesig{8}, windDesig{3} }; 
varInitLM{5} = { groupDesig{2}, heightDesig{2}, foamDesig{4}, meshDesig{8}, windDesig{2} }; 
varInitLM{6} = { groupDesig{2}, heightDesig{2}, foamDesig{4}, meshDesig{8}, windDesig{3} }; 
varInitLM{7} = { groupDesig{2}, heightDesig{2}, foamDesig{1}, meshDesig{8}, windDesig{2} }; 
varInitLM{8} = { groupDesig{2}, heightDesig{2}, foamDesig{1}, meshDesig{8}, windDesig{3} }; 
% Now with plastic mesh 
varInitLM{9} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{24}, windDesig{2} }; 
varInitLM{10} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{24}, windDesig{3} }; 
% And bare foam
varInitLM{11} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{1}, windDesig{2} }; 
varInitLM{12} = { groupDesig{2}, heightDesig{2}, foamDesig{7}, meshDesig{1}, windDesig{3} }; 
% Short variants 
varInitLM{13} = { groupDesig{2}, heightDesig{1}, foamDesig{7}, meshDesig{8}, windDesig{2} }; 
varInitLM{14} = { groupDesig{2}, heightDesig{1}, foamDesig{7}, meshDesig{8}, windDesig{3} }; 
varInitLM{15} = { groupDesig{2}, heightDesig{1}, foamDesig{1}, meshDesig{8}, windDesig{2} }; 
varInitLM{16} = { groupDesig{2}, heightDesig{1}, foamDesig{1}, meshDesig{8}, windDesig{3} }; 
varInitLM{17} = { groupDesig{2}, heightDesig{1}, foamDesig{6}, meshDesig{8}, windDesig{2} }; 
varInitLM{18} = { groupDesig{2}, heightDesig{1}, foamDesig{6}, meshDesig{8}, windDesig{3} }; 
varInitLM{19} = { groupDesig{2}, heightDesig{1}, foamDesig{3}, meshDesig{8}, windDesig{2} }; 
varInitLM{20} = { groupDesig{2}, heightDesig{1}, foamDesig{3}, meshDesig{8}, windDesig{3} };



plotAB( varInitLM{1}, varInitLM{3}, 1 ); %1
plotAB( varInitLM{2}, varInitLM{4}, 2 ); %2
plotAB( varInitLM{1}, varInitLM{5}, 3 ); %3
plotAB( varInitLM{2}, varInitLM{6}, 4 ); %4
plotAB( varInitLM{1}, varInitLM{7}, 5 ); %5
plotAB( varInitLM{2}, varInitLM{8}, 6 ); %6
plotAB( varInitLM{1}, varInitLM{11}, 7 ); %7
plotAB( varInitLM{2}, varInitLM{12}, 8 ); %8
plotAB( varInitLM{1}, varInitLM{9}, 9 ); %9
plotAB( varInitLM{2}, varInitLM{10}, 10 ); %10
plotAB( varInitLM{7}, varInitLM{3}, 11 ); %11
plotAB( varInitLM{8}, varInitLM{4}, 12 ); %12
plotAB( varInitLM{7}, varInitLM{5}, 13 ); %13
plotAB( varInitLM{8}, varInitLM{6}, 14 ); %14
plotAB( varInitLM{7}, varInitLM{15}, 15 ); %15
plotAB( varInitLM{8}, varInitLM{16}, 16 ); %16
plotAB( varInitLM{17}, varInitLM{3}, 17 ); %17
plotAB( varInitLM{18}, varInitLM{4}, 18 ); %18
plotAB( varInitLM{17}, varInitLM{15}, 19 ); %19
plotAB( varInitLM{18}, varInitLM{16}, 20 ); %20
plotAB( varInitLM{15}, varInitLM{13}, 21 ); %21
plotAB( varInitLM{16}, varInitLM{14}, 22 ); %22
plotAB( varInitLM{15}, varInitLM{19}, 23 ); %23
plotAB( varInitLM{16}, varInitLM{20}, 24 ); %24
