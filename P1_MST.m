%MINIMUM SPANNING TREE EXAMPLE

%W is the adjacency matrix with weights
W= [0 190 70 115 270 160;
    190 0 100 110 215 50;
    70 100 0 140 120 220;
    115 110 140 0 175 80;
    270 215 120 175 0 310;
    160 50 220 80 310 0]
%W is the adjacency matrix with weights
%this is the matrix that describes the 
%network in lecture nodes slide#14
        
labels={'Main','B.1','B.2','B.3','B.4','B.5'}
%define the labels of the nodes

%create a graph structure based on W and labels
G = graph(W,labels)

%visualize the graph
p = plot(G,'EdgeLabel',G.Edges.Weight)
axis off

%find the mininmum spanning tree
mst= minspantree(G)%implementation of Kruskal's algorithm
length = sum(mst.Edges{:,2})
%highlight the MST
highlight(p,mst,'edgecolor','g','linewidth',2)
%g--green,r--red
