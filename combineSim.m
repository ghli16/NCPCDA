function [ sim ] = combineSim( sim1, sim2 )
%COMBINESIM Summary of this function goes here
%   Detailed explanation goes here

[rows, cols]=size(sim1);

sim=zeros(rows, cols);

 for i=1:rows
     for j=1:cols
        
         if (sim1(i,j)==0)
             sim(i,j)=sim2(i,j);
        else
             sim(i,j)=sim1(i,j);
         end
        
         %sim(i,j)=(sim1(i,j)+sim2(i,j))/2;
                     
     end
 end

end

