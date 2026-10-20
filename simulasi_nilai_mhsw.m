clc, clear

filename = 'Nilai Simulasi Mamhasiswa.xlsx';

data = readtable(filename,'Sheet','DAFTAR NILAI');

head(data)
size(data)
summary(data)

exam = data.UJIAN
tugas = data.TUGAS
modul1 = data.ModulI
modul2 = data.ModulII
modul3 = data.ModulIII
modul4= data.ModulIV

Nilai_Akhir = 0.50 * (modul1 + modul2 + modul3 + modul4)/4 + 0.30 * tugas + 0.20* exam

n = length(Nilai_Akhir)
huruf = strings(n,1);

huruf(Nilai_Akhir >= 80) = "A";
huruf(Nilai_Akhir >= 70 & Nilai_Akhir < 80) = "B";
huruf(Nilai_Akhir >= 60 & Nilai_Akhir < 70) = "C";
huruf(Nilai_Akhir >= 50 & Nilai_Akhir < 60) = "D";
huruf(Nilai_Akhir < 50) = "E";


% =====================================================
% SELECT STUDENTS BASED ON LETTER GRADE
% =====================================================

pilihan = input('Select grade (A, B, or C): ','s');

% Find students with the selected grade
idx = huruf == upper(pilihan);
NIM = compose('%.0f', data.NIM);

% Display selected students
hasil_pilihan = table( ...
    data.No(idx), ...
    NIM(idx), ...
    data.Nama(idx), ...
    Nilai_Akhir(idx), ...
    huruf(idx), ...
    'VariableNames', ...
    {'No','NIM','Nama','Nilai_Akhir','Huruf'});

disp(hasil_pilihan)

%% ADD RESULTS TO ORIGINAL DATA

data.Nilai_Akhir = Nilai_Akhir;
data.Huruf = huruf;

% Display completed data
disp(data)


%% EXPORT TO EXCEL

filename_out = input( ...
    'Enter the output Excel filename: ','s');

% Add .xlsx automatically if user does not type it
if ~endsWith(filename_out,'.xlsx')
    filename_out = filename_out + ".xlsx";
end

% Export completed table
writetable(data, filename_out, ...
    'Sheet','DAFTAR NILAI');

fprintf('\nData successfully exported to:\n%s\n', ...
    filename_out);




