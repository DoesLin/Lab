function [ ] = extractGrapheSkel(dataFile)

frameNum = 1;

fprintf('visualize skeleton!!\n');

fprintf(' skeleton data: %s\n', dataFile);
fprintf(' frame number:  %d\n\n', frameNum);

if ~exist(dataFile,'file'),
    error('FILE DOES NOT EXIST! CHECK FILE PATH AND FILE NAME!'); 
else
    figureTitle = strcat(dataFile, ' (frame:', int2str(frameNum),')');
    readSkel(dataFile,frameNum, figureTitle);
    fprintf('ALL DONE.\n');
end

field1 = 'Nodes';
value1 = zeros(15,3);

field2 = 'Edges';
tConnection = [
    0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; % 1
    1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0; % 2
    0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0; % 3
    0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; % 4
    0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0; % 5
    0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0; % 6
    0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0; % 7
    0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0; % 8
    0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0; % 9
    0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0; % 10
    0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1; % 11
    0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; % 12
    0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0; % 13
    0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0; % 14
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;]; % 15
value2 = {tConnection};
G = struct(field1, value1, field2, value2);

disp(issymmetric(G.Edges));
disp(G.Nodes);

save('G1.mat', 'G');

end

