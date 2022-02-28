
function [alphabet, word_count, letters, letter_count] = letter_counter(read_file)

file_size = size(read_file);
alphabet = zeros(1,33);
letters = {'Aa', 'Bb', 'Cc', 'Çç', 'Dd', 'Ee',...
           'Ff', 'Gg', 'Ğğ', 'Hh', 'Iı', 'İi',...
           'Jj', 'Kk', 'Ll', 'Mm', 'Nn', 'Oo',...
           'Öö', 'Pp', 'Rr', 'Ss', 'Şş', 'Tt',...
           'Uu', 'Üü', 'Vv', 'Yy', 'Zz', 'Qq',...
           'Ww', 'Xx', 'Ää'};
space_count = 0;
line_count = 0;
letter_count=0;
letter_count = file_size(:,1)
for i = 1:file_size
    
    
    switch read_file(i)
        
        %----Letters used in the Turkish language----%
        case(10); line_count = line_count+1; letter_count = letter_count-1;
        case(32); space_count = space_count+1; letter_count = letter_count-1;
        case(65); alphabet(1,1) = alphabet(1,1)+1; %A
        case(97); alphabet(1,1) = alphabet(1,1)+1; %a
        case(66); alphabet(1,2) = alphabet(1,2)+1; %B
        case(98); alphabet(1,2) = alphabet(1,2)+1; %b
        case(67); alphabet(1,3) = alphabet(1,3)+1; %C
        case(99); alphabet(1,3) = alphabet(1,3)+1; %c
        case(50); alphabet(1,4) = alphabet(1,4)+1; %Ç
      % case(97); alfabe(1,1) = alfabe(1,1)+1; %ç
        case(68); alphabet(1,5) = alphabet(1,5)+1; %D
        case(100); alphabet(1,5) = alphabet(1,5)+1; %d
        case(69); alphabet(1,6) = alphabet(1,6)+1; %E
        case(101); alphabet(1,6) = alphabet(1,6)+1; %e
        case(70); alphabet(1,7) = alphabet(1,7)+1; %F
        case(102); alphabet(1,7) = alphabet(1,7)+1; %f
        case(71); alphabet(1,8) = alphabet(1,8)+1; %G
        case(103); alphabet(1,8) = alphabet(1,8)+1; %g
        case(54); alphabet(1,9) = alphabet(1,9)+1; %Ğ
       %case(97); alfabe(1,1) = alfabe(1,1)+1; %ğ
        case(72); alphabet(1,10) = alphabet(1,10)+1; %H
        case(104); alphabet(1,10) = alphabet(1,10)+1; %h
        case(73); alphabet(1,11) = alphabet(1,11)+1; %I
        case(49); alphabet(1,11) = alphabet(1,11)+1; %ı
       %case(74); alfabe(1,1) = alfabe(1,1)+1; %İ
        case(105); alphabet(1,12) = alphabet(1,12)+1; %i
        case(74); alphabet(1,13) = alphabet(1,13)+1; %J
        case(106); alphabet(1,13) = alphabet(1,13)+1; %j
        case(75); alphabet(1,14) = alphabet(1,14)+1; %K
        case(107); alphabet(1,14) = alphabet(1,14)+1; %k
        case(76); alphabet(1,15) = alphabet(1,15)+1; %L
        case(108); alphabet(1,15) = alphabet(1,15)+1; %l
        case(77); alphabet(1,16) = alphabet(1,16)+1; %M
        case(109); alphabet(1,16) = alphabet(1,16)+1; %m
        case(78); alphabet(1,17) = alphabet(1,17)+1; %N
        case(110); alphabet(1,17) = alphabet(1,17)+1; %n
        case(79); alphabet(1,18) = alphabet(1,18)+1; %O
        case(111); alphabet(1,18) = alphabet(1,18)+1; %o
        case(48); alphabet(1,19) = alphabet(1,19)+1; %Ö
       %case(97); alfabe(1,1) = alfabe(1,1)+1; %ö
        case(80); alphabet(1,20) = alphabet(1,20)+1; %P
        case(112); alphabet(1,20) = alphabet(1,20)+1; %p
        case(82); alphabet(1,21) = alphabet(1,21)+1; %R
        case(114); alphabet(1,21) = alphabet(1,21)+1; %r
        case(83); alphabet(1,22) = alphabet(1,22)+1; %S
        case(115); alphabet(1,22) = alphabet(1,22)+1; %s
        case(53); alphabet(1,23) = alphabet(1,23)+1; %Ş
       %case(); alfabe(1,1) = alfabe(1,1)+1; %ş
        case(84); alphabet(1,24) = alphabet(1,24)+1; %T
        case(116); alphabet(1,24) = alphabet(1,24)+1; %t
        case(85); alphabet(1,25) = alphabet(1,25)+1; %U
        case(117); alphabet(1,25) = alphabet(1,25)+1; %u
        case(56); alphabet(1,26) = alphabet(1,26)+1; %Ü
       %case(); alfabe(1,1) = alfabe(1,1)+1; %ü
        case(86); alphabet(1,27) = alphabet(1,27)+1; %V
        case(118); alphabet(1,27) = alphabet(1,27)+1; %v
        case(89); alphabet(1,28) = alphabet(1,28)+1; %Y
        case(121); alphabet(1,28) = alphabet(1,28)+1; %y
        case(90); alphabet(1,29) = alphabet(1,29)+1; %Z
        case(122); alphabet(1,29) = alphabet(1,29)+1; %z
            
        %----Letters used in German and English languages----%
        
        case(81); alphabet(1,30) = alphabet(1,30)+1; %Q
        case(113); alphabet(1,30) = alphabet(1,30)+1; %q    
        case(87); alphabet(1,31) = alphabet(1,31)+1; %W
        case(119); alphabet(1,31) = alphabet(1,31)+1; %w
        case(88); alphabet(1,32) = alphabet(1,32)+1; %X
        case(120); alphabet(1,32) = alphabet(1,32)+1; %x
        case(52); alphabet(1,33) = alphabet(1,33)+1; %Ä
          
        otherwise
            letter_count = letter_count-1;
    end
    
end

if line_count<space_count
    word_count = space_count;
else
    word_count = line_count;
end
    
fprintf("There are %d words and ", word_count);
fprintf("%d letters in this database.\n\nThese words include\n", letter_count);

for k=1:length(alphabet)
    if(k~=length(alphabet))
        fprintf("the letter %s: %d times,\n", letters{k}, alphabet(k));
    else
         fprintf("and the letter %s: %d times.\n", letters{k}, alphabet(k));
    end
end
end