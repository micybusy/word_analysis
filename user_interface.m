function user_interface

clc
clear

file = uigetfile('*.txt');

opened_file= fopen(file);
database = fread(opened_file);

[alphabet, word_count, letters, letter_count] = letter_counter(database);
sort_n_plot(alphabet, letters, letter_count, file, word_count);

end