program ContohWithRecord;
uses crt;

type
    TMahasiswa = record
    nama : string[25];
    nim  : string[10];
    umur : integer;
    end;

var
    mhs : TMahasiswa;

begin
    clrscr;

    { Mengisi record dengan pernyataan WITH }
    with mhs do
    begin
        write('Masukkan Nama : ');
        readln(nama);
        write('Masukkan NIM : ');
        readln(nim);
        write('Masukkan Umur : ');
        readln(umur);
    end;

    clrscr;

    { Menampilkan isi record juga bisa dengan WITH }
    writeln('Data Mahasiswa');
    with mhs do
    begin
        writeln('Nama : ', nama);
        writeln('NIM : ', nim);
        writeln('Umur : ', umur);
    end;

    readln;
end.