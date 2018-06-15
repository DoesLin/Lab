function [ ] = showGraph(G)

% load('G1.mat', 'G');

xLine1 = 1:0;
yLine1 = 1:0;
zLine1 = 1:0;

xLine1(end + 1) = G.Nodes(1, 1);
xLine1(end + 1) = G.Nodes(2, 1);

yLine1(end + 1) = G.Nodes(1, 2);
yLine1(end + 1) = G.Nodes(2, 2);

zLine1(end + 1) = G.Nodes(1, 3);
zLine1(end + 1) = G.Nodes(2, 3);

plot3(xLine1, yLine1, zLine1, 'o-');

hold on;

xLine2 = 1:0;
yLine2 = 1:0;
zLine2 = 1:0;

xLine2(end + 1) = G.Nodes(12, 1);
xLine2(end + 1) = G.Nodes(5, 1);
xLine2(end + 1) = G.Nodes(4, 1);
xLine2(end + 1) = G.Nodes(2, 1);
xLine2(end + 1) = G.Nodes(6, 1);
xLine2(end + 1) = G.Nodes(7, 1);
xLine2(end + 1) = G.Nodes(13, 1);

yLine2(end + 1) = G.Nodes(12, 2);
yLine2(end + 1) = G.Nodes(5, 2);
yLine2(end + 1) = G.Nodes(4, 2);
yLine2(end + 1) = G.Nodes(2, 2);
yLine2(end + 1) = G.Nodes(6, 2);
yLine2(end + 1) = G.Nodes(7, 2);
yLine2(end + 1) = G.Nodes(13, 2);

zLine2(end + 1) = G.Nodes(12, 3);
zLine2(end + 1) = G.Nodes(5, 3);
zLine2(end + 1) = G.Nodes(4, 3);
zLine2(end + 1) = G.Nodes(2, 3);
zLine2(end + 1) = G.Nodes(6, 3);
zLine2(end + 1) = G.Nodes(7, 3);
zLine2(end + 1) = G.Nodes(13, 3);

plot3(xLine2, yLine2, zLine2, 'o-');

xLine3 = 1:0;
yLine3 = 1:0;
zLine3 = 1:0;

xLine3(end + 1) = G.Nodes(4, 1);
xLine3(end + 1) = G.Nodes(3, 1);
xLine3(end + 1) = G.Nodes(10, 1);
xLine3(end + 1) = G.Nodes(11, 1);
xLine3(end + 1) = G.Nodes(15, 1);

yLine3(end + 1) = G.Nodes(4, 2);
yLine3(end + 1) = G.Nodes(3, 2);
yLine3(end + 1) = G.Nodes(10, 2);
yLine3(end + 1) = G.Nodes(11, 2);
yLine3(end + 1) = G.Nodes(15, 2);

zLine3(end + 1) = G.Nodes(4, 3);
zLine3(end + 1) = G.Nodes(3, 3);
zLine3(end + 1) = G.Nodes(10, 3);
zLine3(end + 1) = G.Nodes(11, 3);
zLine3(end + 1) = G.Nodes(15, 3);

plot3(xLine3, yLine3, zLine3, 'o-');

xLine4 = 1:0;
yLine4 = 1:0;
zLine4 = 1:0;

xLine4(end + 1) = G.Nodes(6, 1);
xLine4(end + 1) = G.Nodes(3, 1);
xLine4(end + 1) = G.Nodes(8, 1);
xLine4(end + 1) = G.Nodes(9, 1);
xLine4(end + 1) = G.Nodes(14, 1);

yLine4(end + 1) = G.Nodes(6, 2);
yLine4(end + 1) = G.Nodes(3, 2);
yLine4(end + 1) = G.Nodes(8, 2);
yLine4(end + 1) = G.Nodes(9, 2);
yLine4(end + 1) = G.Nodes(14, 2);

zLine4(end + 1) = G.Nodes(6, 3);
zLine4(end + 1) = G.Nodes(3, 3);
zLine4(end + 1) = G.Nodes(8, 3);
zLine4(end + 1) = G.Nodes(9, 3);
zLine4(end + 1) = G.Nodes(14, 3);

plot3(xLine4, yLine4, zLine4, 'o-');

xLine5 = 1:0;
yLine5 = 1:0;
zLine5 = 1:0;

xLine5(end + 1) = G.Nodes(8, 1);
xLine5(end + 1) = G.Nodes(10, 1);

yLine5(end + 1) = G.Nodes(8, 2);
yLine5(end + 1) = G.Nodes(10, 2);

zLine5(end + 1) = G.Nodes(8, 3);
zLine5(end + 1) = G.Nodes(10, 3);

plot3(xLine5, yLine5, zLine5, 'o-');

hold off;

end

