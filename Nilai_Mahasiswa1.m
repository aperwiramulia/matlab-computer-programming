clc, clear, clf 

Tugas = input('Nilai Tugas = ');
MT = input('Nilai Mid Test = ');
UAS = input('Nilai Ujian Akhir = '); 

NA = 0.3 * Tugas + 0.3 * MT + 0.4 * UAS; 
fprintf("Nilai Akhir Mahasiswa = %5.2f \n", NA)

if NA >= 85 
    disp('Nilainya A')
elseif NA >= 75 
    disp('Nilainya B+')
elseif NA >= 65
    disp('Nilainya B')
elseif NA >= 55
    disp('Nilainya C+')
elseif NA >= 45
    disp('Nilainya C')
elseif NA >= 35 
    disp('Nilainya D')
else 
    disp('Nilainya E')
end

