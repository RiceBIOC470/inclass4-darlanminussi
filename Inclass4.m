% Darlan Conterno Minussi

%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. 

first_seq = randi(100,13,13);
second_seq = randi(100,9,7);

filename = "inclass4_file.txt";

fid = fopen(filename, "wt");

fprintf(fid,"Random number 1\n");

for i = 1:size(first_seq,1)
    fprintf(fid, '%g\t', first_seq(i,:));
    fprintf(fid, '\n');
end

fprintf(fid,"Random number 2\n");

for i = 1:size(second_seq,1)
    fprintf(fid, '%g\t', second_seq(i,:));
    fprintf(fid, '\n');
end

fclose(fid);

% (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

inclass4 = fopen(filename, 'r');
line1 = fgetl(inclass4);
line2 = fgetl(inclass4);
line2_array = str2num(line2);

    


% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

% also saved as a separated file to allow for function to work in matlab
function f = check_sum(array)
%CHECK_SUM check if sum > 10
%   checks if sum si bigger than 10
output = sum(sum(array)) > 10

end