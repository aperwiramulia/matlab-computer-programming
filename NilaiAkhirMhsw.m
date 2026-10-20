clc, clear

T = readtable('Rekap Prak Komp B.xlsx');
clc

size(T);


T.Total = 0.25*T.NilaiTotalModulI + 0.25*T.NilaiTotalModulII+ 0.25*T.NilaiTotalModulIII+0.25*T.NilaiTotalModulIV;
disp(T.Total);

T



