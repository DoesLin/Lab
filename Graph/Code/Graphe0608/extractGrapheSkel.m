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

nStart  = [1 2 2 3 3 3 3 4 5 6 7 8 8 9 10 11];
nEnd    = [2 4 6 4 6 8 10 5 12 7 13 9 10 14 11 15];
gTarget = graph(nStart, nEnd);
% gTarget.Nodes.Name = {'HEAD', 'NECK', 'TORSO', 'LEFT_SHOULDER', 'LEFT_ELBOW', 'RIGHT_SHOULDER',
%     'RIGHT_ELBOW', 'LEFT_HIP', 'LEFT_KNEE', 'RIGHT_HIP', 'RIGHT_KNEE', 'LEFT_HAND',
%     'RIGHT_HAND', 'LEFT_FOOT', 'RIGHT_FOOT'};

disp(gTarget.Edges);
save('graphe.mat', 'gTarget');

end

