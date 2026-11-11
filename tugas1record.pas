program BiodataMahasiswa;

type
  { record tanggal lahir }
  TTanggal = record
    tanggal : integer;
    bulan   : integer;
    tahun   : integer;
  end;

  { record alamat }
  TAlamat = record
    jalan : string[100];
    kota  : string[30];
  end;

  TMahasiswa = record
    nama        : string[50];
    nim         : string[15];
    alamat      : TAlamat;     { record bersarang }
    noHP        : string[15];
    tempatLahir : string[30];
    tglLahir    : TTanggal;    { record bersarang }
  end;

var
  mhs : array[1..100] of TMahasiswa;
  n, i : integer;

begin
  writeln('=== INPUT BIODATA MAHASISWA ===');
  write('Jumlah mahasiswa yang akan diinput : ');
  readln(n);
  writeln;

  { ---------- PROSES INPUT ---------- }
  for i := 1 to n do
  begin
    writeln('Data Mahasiswa ke-', i);
    with mhs[i] do
    begin
      write('  Nama           : '); readln(nama);
      write('  NIM            : '); readln(nim);
      writeln('  Alamat');
      with alamat do
      begin
        write('    Nama Jalan   : '); readln(jalan);
        write('    Nama Kota    : '); readln(kota);
      end;
      write('  No. HP         : '); readln(noHP);
      write('  Tempat Lahir   : '); readln(tempatLahir);
      writeln('  Tanggal Lahir');
      with tglLahir do
      begin
        write('    Tanggal      : '); readln(tanggal);
        write('    Bulan (angka): '); readln(bulan);
        write('    Tahun        : '); readln(tahun);
      end;
    end;
    writeln;
  end;

  { ---------- PROSES TAMPIL ---------- }
  writeln('=== DATA MAHASISWA YANG TELAH DIINPUTKAN ===');
  writeln;
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    with mhs[i] do
    begin
      writeln('  Nama           : ', nama);
      writeln('  NIM            : ', nim);
      with alamat do
      begin
        writeln('  Alamat');
        writeln('    Nama Jalan   : ', jalan);
        writeln('    Nama Kota    : ', kota);
      end;
      writeln('  No. HP         : ', noHP);
      writeln('  Tempat Lahir   : ', tempatLahir);
      with tglLahir do
        writeln('  Tanggal Lahir  : ', tanggal, '-', bulan, '-', tahun);
    end;
    writeln;
  end;

  write('Tekan Enter untuk keluar...');
  readln;
end.