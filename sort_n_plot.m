
function sort_n_plot(alphabet, letters, letter_count, file_name, word_count)


letters = categorical(letters);
letters = reordercats(letters,...
          {'Aa', 'Bb', 'Cc', 'Çç', 'Dd', 'Ee',...
           'Ff', 'Gg', 'Ğğ', 'Hh', 'Iı', 'İi',...
           'Jj', 'Kk', 'Ll', 'Mm', 'Nn', 'Oo',...
           'Öö', 'Pp', 'Rr', 'Ss', 'Şş', 'Tt',...
           'Uu', 'Üü', 'Vv', 'Yy', 'Zz', 'Qq',...
           'Ww', 'Xx', 'Ää'});
       
figure('units', 'normalized', 'outerposition', [0 0 1 1]);

bar(letters, alphabet, 'FaceColor', '#4800fd');
title("In Alphabetical Order("+ file_name+") Total Of "+ num2str(word_count)+" Words");
ylabel("LETTER COUNT (TOTAL OF "+num2str(letter_count)+" LETTERS)");
set (gca, 'Fontsize', 20);
[sorted_alphabet, index] = sort(alphabet, 'descend');
sorted_letters = letters(index);
ratio_to_all = alphabet/letter_count;
figure('units', 'normalized', 'outerposition', [0 0 1 1]);
bar(sorted_alphabet, 'FaceColor', '#990000'); 
title("Most Pronounced to Least Pronounced("+ file_name+ ")Total Of "+ num2str(word_count)+" Words");
ylabel("LETTER COUNT(TOTAL OF "+num2str(letter_count)+" LETTERS)");

set (gca, 'XTickLabel', sorted_letters, 'FontSize', 20,...
    'XTick', 1:numel(sorted_letters));

figure('units', 'normalized', 'outerposition', [0 0 1 1]);
imagesc(0.5,0.5, ratio_to_all);
title("Density Map for "+ file_name);
colorbar()
set (gca, 'XTickLabel', letters, 'FontSize', 20,...
    'XTick', 0.5:numel(letters));



end