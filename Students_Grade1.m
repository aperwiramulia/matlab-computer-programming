clc, clear

grades = [75 82 67 90 88 73 55 79 84 92 ... %Data Nilai Mahassiswa
          65 77 81 86 70 58 94 76 83 69 ...
          43 56 64 74 84 76 64 44 80 95];

%Hitung statistik
meanGrade = mean(grades)
stdGrade = std(grades)
medianGrade = median(grades) 
minGrade = min(grades)
maxGrade = max(grades)
modGrade = mode(grades)


highGrades = grades(grades >= 80) % Simpan data yg sm dgn atau lbh besar 80
nHigh = sum(grades >= 80) % Hitung jumlah data tsb di atas

nA = sum(grades >= 85)  %Jumlah data yg dpt nilai A 
nB = sum(grades >= 75 & grades < 85)  %Jumlah data yg dpt nilai B
nC = sum(grades >= 65 & grades < 75)  %Jumlah data yg dpt nilai C
nD = sum(grades >= 55 & grades < 65)  %Jumlah data yg dpt nilai D
nE = sum(grades < 55)                 %Jumlah data yg dpt nilai E   

figure 
histogram(grades, 6)

xlabel('Grade')
ylabel('Number of Students')
title('Distribution of Student Grades')
grid on

figure 
edges = 30:10:100;
histogram(grades, 'BinEdges', edges) 

% Put the frequencies into one vector
gradeCount = [nA nB nC nD nE];
% Draw pie chart
labels = {
    sprintf('A (%d)',nA)
    sprintf('B (%d)',nB)
    sprintf('C (%d)',nC)
    sprintf('D (%d)',nD)
    sprintf('E (%d)',nE)
};
figure 
pie(gradeCount, labels)

legend('A','B','C','D','E', ...
       'Location','bestoutside')
title('Distribution of Student Grades')