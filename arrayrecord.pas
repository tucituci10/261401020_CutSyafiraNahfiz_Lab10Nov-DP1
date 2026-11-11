program ArrayRecord;
uses crt;
type
    TSiswa = record
        nama : string[25];
        nilai : integer;   
    end;

var
    siswa : array[1..10] of TSiswa;
    n, i : integer;

begin
    clrscr;
    writeln('Masukkan berapa siswa : '); readln(n);
    for i := 1 to n do
    begin
        writeln('siswa ke-', i);
        write('Nama : '); readln(siswa[i].nama);
        write('Nilai : '); readln(siswa[i].nilai);
    end;

    for i := 1 to n do
        with siswa[i] do
        writeln(i, '. ', nama, ' memiliki nilai ', nilai);
    end.

end.