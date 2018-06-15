function [ ] = readSkel( actionName, fileName, videoNum )
    fid = fopen(strcat('Data/', actionName, '/', fileName, '.txt'));
    tline = num2str(fgetl(fid));
    while (ischar(tline) && 0 == strcmp(tline, 'END'))
        [fnum,tline] = strtok(tline,',');
        fnum=str2num(fnum);
        
        fprintf('found frame num %d\n', fnum);
        data = zeros(11,14);
        data_pos = zeros(4,4);
            
        % Init my graph
        tAxis = zeros(15,3);
            
        for i=1:11
            for j=1:14
                [element,tline] = strtok(tline,',');
                data(i,j) = str2num(element);
                    
                % Stock my graph
                if j == 11 || j == 12 || j == 13
                    tAxis(i, j - 10) = str2num(element);
                end
            end
        end
        for i=1:4
            for j=1:4
                [element,tline] = strtok(tline,',');
                data_pos(i,j) = str2num(element);
                  
                % Stock my graph
                if j == 1 || j == 2 || j == 3
                    tAxis(i + 11, j) = str2num(element);
                end
            end
        end

        [element,tline] = strtok(tline,',');

        if strcmp(element, '') ~=1
            error('ERROR! more data exist... parsing error..');
        end

        % showSkel(data, data_pos, figureTitle);            
        stockGraph(actionName, videoNum, tAxis, num2str(fnum));
            
        % End one frame
        
        % read next line
        tline = fgetl(fid);
    end

end
