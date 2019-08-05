%%Project 4:

words = importdata('Words.csv'); %import the csv file

sorted_words = sort(words); %order the words from A to Z


number_of_words = length(sorted_words); %size of csv file


for ii=1:number_of_words %looping over csv file's row
    clear wordstarts wordends mytext
    mytext= sorted_words(ii,:); % extracting the row 
    [wordstarts, wordends] = regexp(mytext, '\w+'); %extrapolate both wordstarts and wordends 
    number_of_words(ii,:)=length(wordends{1}); %extract the words number
    wordlengths(ii,:) = sum(wordends{1} - wordstarts{1} + 1); %extract the words lenght
    
end

number_of_words = sum(number_of_words); %count the number of words
wordlengths_average = mean(wordlengths);%evaluate the average word length for the list.





