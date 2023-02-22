function [nutritionFacts, st] = celery(cellData)
   [r,c] = size(cellData);%Finds the rows and columns of the provided data.
   firstRow = cellData(1,:);%This pulls off the first row, which has the types of data in the chart.
   loc = find(strcmp(firstRow, 'Rating'));%This finds the location where the first row equals Rating. 
   ratingOrder = [];%Initializes the rating order vector to 0.
   structure1 = struct; %Initializes a blank structure for use later on. 
   for x = 1:c %Runs for each of the columns in the cell array. 
       for y = 1:r-1 %Runs for all but one of the rows in our cell array. This is because the first row is an label row.
            structure1(y).(cellData{1,x}) = cellData{y+1,x};%This creates a field and adds each value from the cell array into their respective spots.
       end
   end
   for x = 2:r%Runs from the second row to the end.
       ratingOrder = [ratingOrder cellData{x,loc}];%This finds the row that contains the Rating values. We will sort by the values in this row later on. 
   end
   [~,inds] = sort(ratingOrder,'d');%Sorts the ratingOrder vector in descending order and outputs the indecies.
   structure1 = structure1(:,inds);%Sorts the structure based on the indecies found above.
   nutritionFacts = structure1;%Sets output to the final form of our structure.
   
   
   %Parasite T3
%    st = struct()
%    st.FirstName = ['Mat',23,45]
%    st.age = 21
%    st.troll = 78
%     st(2).FirstName = 'HELLOTHERE'
%     st(3).FirstName = 'JANKAUSKI'
%     st(2).age = 79
%     st(3).age = 101
% %    x = st(2).FirstName
% % %    st(2).FirstName = [];
%     st(3).troll = 88
%     st = st([3,1,2])
%     i = [st.age]

    a1 = {'hi', 'x', 'y','x'}
%     a2 = {30,18,25,24}
%     st = struct('name', a1, 'mongrol', a2, 'hilo', {'hi',2,3,3})
% %     x = st.name
%     x = [st.name]
%     cell
x = 'hello'
st =struct()
% st.(x) = 'yo'  
% l = rmfield(st, 'hello')
x = {'hi', 'there'; 'human' 'workers'}
y = [0 0; 1 0]
i = x(:,y)

end