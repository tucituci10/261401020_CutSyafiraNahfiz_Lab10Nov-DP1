program NestedRecord;
uses crt;

type
    
    TAlamat = record
        jalan : string[25];
        kota  : string[15];
    end;

    TSiswa = record
        nama : string[20];
        umur : integer;
        alamat : TAlamat;
    end;

var
    s1, s2 : TSiswa;

begin
    clrscr;

    with s1 do
    begin
        writeln('input nama siswa ke 1 : '); readln(nama);
        writeln('input umur siswa ke 1 : '); readln(umur);

        with alamat do
        begin
            writeln('input jalan siswa ke 1 : '); readln(jalan);
            writeln('input kota siswa ke 1 : '); readln(kota);
        end;
    end;


    write('Nama : '); readln(s1.nama);
    write('Umur : '); readln(s1.umur);
    write('Alamat Jalan : '); readln(s1.alamat.jalan);
    write('Alamat Kota : '); readln(s1.alamat.kota);

    clrscr;

    with s2 do
    begin
        writeln('input nama siswa ke 2 : '); readln(nama);
        writeln('input umur siswa ke 2 : '); readln(umur);
        with alamat do
        begin
        writeln('input jalan siswa ke 2 : '); readln(jalan);
        writeln('input kota siswa ke 2 : '); readln(kota);
        end;
    end;

    write('Nama : '); readln(s2.nama);
    write('Umur : '); readln(s2.umur);
    write('Alamat Jalan : '); readln(s2.alamat.jalan);
    write('Alamat Kota : '); readln(s2.alamat.kota);


    clrscr;
    writeln('Data Siswa 1');
    writeln('Nama : ', s1.nama);
    writeln('Umur : ', s1.umur);
    writeln('Alamat Jalan : ', s1.alamat.jalan);
    writeln('Alamat Kota : ', s1.alamat.kota);

    writeln;
    
    writeln('Data Siswa 2');
    writeln('Nama : ', s2.nama);
    writeln('Umur : ', s2.umur);
    writeln('Alamat Jalan : ', s2.alamat.jalan);
    writeln('Alamat Kota : ', s2.alamat.kota);

    readln;
end.
