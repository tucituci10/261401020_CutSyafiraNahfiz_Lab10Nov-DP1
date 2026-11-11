program record1;
uses crt;
type
    biodata = record
        nama : string[25];
        nim: string[10];
        umur : integer;
    end;
var
    data : biodata;

begin

    clrscr;
    writeln('Masukkan Nama Anda : '); readln(data.nama);
    writeln('Masukkan NIM Anda : '); readln(data.nim);
    writeln('Masukkan Umur Anda : '); readln(data.umur);

    clrscr;
    writeln('Nama : ', data.nama);
    writeln('NIM : ', data.nim);
    writeln('Umur : ', data.umur);
    readln;
end.