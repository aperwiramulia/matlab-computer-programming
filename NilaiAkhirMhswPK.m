clc, clear   %Mulai Program dengan membersihkan layar dan memori

NM = readtable('NilaiPraktikumSingkat1.xlsx');
disp(NM)
size(NM)

% Cara Menghapus Kolom -> NM(:, {'No','Nama', 'NIM'}) = [];

NM.Total_P = 0.25*NM.NilaiTotalModulI + 0.25*NM.NilaiTotalModulII + 0.25*NM.NilaiTotalModulIII+ 0.25*NM.NilaiTotalModulIV;
disp(NM.Total_P);

%NM.Grade = strings(height(NM),1);  % create empty string column

for i = 1:height(NM)
    if NM.Total_P(i) >= 85
        NM.Grade(i) = 'A';
    elseif NM.Total_P(i) >= 70
        NM.Grade(i) = 'B';
    elseif NM.Total_P(i) >= 55
        NM.Grade(i) = 'C';
    elseif NM.Total_P(i) >= 40
        NM.Grade(i) = 'D';
    else
        NM.Grade(i) = 'E';
    end
end


NM = sortrows(NM, 'Total_P', 'descend'); % Sort by total marks in descending order

for ii=1:1:47
    NM.Rank(ii) = ii;
end % Add rank column


A_students = NM(NM.Grade == 'A', :);
A_stu = A_students(:,[2 3 8 9 10])
disp(A_students(:,[2 3 8 9 10])); 

L = length(A_student);

% Select only specific columns
%Kirim = NM(:, {'Name', 'NIM', 'Total_P', 'Grade'});
%NM_export = NM(:, [1 2  3 16 17 18]); 

% Save to Excel
%writetable(NM_export, 'Nilai_Akhir_MPK.xlsx');


hist(NM.Total_P)




