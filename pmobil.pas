program pmobil;
uses crt;
type
  TMobil = record
             merk  : string;
             tipe  : string;
             harga : longint;
           end;
  Tarr_mobil = array [1..6] of TMobil;

 TDTrans = record
              kode : integer;
              jml  : integer;
              total : longint;
           end;


  TTrans = record
             nama          : string;
             bayar_cash    : longint;
             bayar_kredit  : real;
             uang_muka     : real;
             cicilan       : real;
             lama_kredit   : integer;
             jml_pembelian : integer;
             dtrans : array[1..5] of TDTrans;
           end;
  Tarr_trans = array [1..100] of TTrans;         

    
procedure isi_data(var data_mobil:Tarr_mobil);
begin
          with data_mobil[1] do
          begin
               merk  := 'HONDA';
               tipe  := 'BRIO';
               harga :=  143500000;
          end;

          with data_mobil[2] do
          begin
               merk  := 'HONDA';
               tipe  := 'JAZZ';
               harga :=  244800000;
          end;

          with data_mobil[3] do
          begin
               merk  := 'HONDA';
               tipe  := 'MOBILIO';
               harga :=  231100000;
          end;

          with data_mobil[4] do
          begin
               merk  := 'DAIHATSU';
               tipe  := 'HI-MAX';
               harga :=  105750000;
          end;

          with data_mobil[5] do
          begin
               merk  := 'DAIHATSU';
               tipe  := 'MAX PU';
               harga :=  140600000;
          end;

          with data_mobil[6] do
          begin
               merk  := 'TOYOTA';
               tipe  := 'ALPHARD';
               harga :=  970350000;
          end;

end;

procedure input;
var
  i,j:integer;
  o,p,q : string;
begin
clrscr;textbackground(blue);
clrscr;textcolor(lightgray);
for i := 44 to 82 do
begin
     gotoxy(i,9); write(chr(170));
     gotoxy(i,19); write(chr(170));
     delay(50);
end;
for j:= 10 to 18 do
begin
     gotoxy(44,j);write(chr(170));
     gotoxy(82,j);write(chr(170));
     delay(50);
end;
textcolor(yellow);
o:= 'SELAMAT DATANG';
     for i := 1 to length(o) do
        for j := 11 to 12 do
           begin
                gotoxy(55+i,j);write(copy(o,i,1));
                gotoxy(55+i,j-1);write(' ');
                delay(50);
            end;
q := 'DI';
      for i:= 1 to length(q) do
         begin
              gotoxy(63,14); write(copy(q,1,i));
              delay(50);
         end;

p := 'ARMADA PUTRA MOTOR';
      for i := 1 to length(p) do
         for j := 16 to 16 do
            begin
                 gotoxy(53+i,j);write(copy(p,i,1));
                 gotoxy(53+i,j-1);write(' ');
                 delay(50);
            end;
                  readln;
end;

procedure mobil;
begin
clrscr;
textbackground(black);clrscr;
textcolor(white);
gotoxy(35,2); writeln('I  L  U  S  T  R  A  S  I    M  O  B  I  L');delay(300);
gotoxy(35,3); writeln('===========================================');delay(300);
textbackground(red);delay(300);
gotoxy(15,5); writeln('__________');
gotoxy(14,6); writeln('/          \');
gotoxy(13,7); writeln('/            \');
gotoxy(7,8); writeln('_____/              \_____');
gotoxy(6, 9); writeln('/                          \');
gotoxy(5,10); writeln('/                            \');
gotoxy(4,11); writeln('/______________________________\');
textbackground(yellow);
gotoxy(30,10); writeln('/ /');
textbackground(lightgray);
gotoxy(17,6); writeln('--------');
gotoxy(16,7); writeln('/       |');
gotoxy(15,8); writeln('/________|');
textbackground(black);
gotoxy(10,12); writeln('(o)');
gotoxy(28,12); writeln('(o)');
textbackground(red);
gotoxy(11,10);write('  H  O  N  D  A  ');

textbackground(yellow);delay(300);
gotoxy(70,5);write('-------------------- ');
gotoxy(70,6);write('|                  |______');
gotoxy(70,7);write('|                  |      \');
gotoxy(70,8);write('|                  |       \');
gotoxy(70,9);write('|                  |        \');
gotoxy(70,10);write('|                  |         \');
gotoxy(70,11);write('|__________________|_________,|');
textbackground(white);
gotoxy(93,9);write('|____\');
gotoxy(93,8);write('|   \');
gotoxy(93,7);write('|  \');
textbackground(black);
gotoxy(75,12);write('(o)');
gotoxy(93,12);write('(o)');
gotoxy(1,13);write('========================================================================================================================');
textbackground(yellow);
gotoxy(73,9);write('D A I H A T S U');

textbackground(magenta);delay(300);
gotoxy(40,19);write('_____________________________________');
gotoxy(40,20);write('|                                    |');
gotoxy(40,21);write('|                                    |');
gotoxy(40,22);write('|                                    |_____');
gotoxy(40,23);write('|                                          \');
gotoxy(40,24);write('|                                           \');
gotoxy(40,25);write('|                                            \');
gotoxy(40,26);write('|____________________________________________,|');
textbackground(white);
gotoxy(42,20); write('|     |     |     |    |    |    |');
gotoxy(42,21); write('|     |     |     |    |    |    |');
gotoxy(42,22); write('|_____|_____|_____|____|____|____|');
gotoxy(82,24);write('|_\');
textbackground(black);
gotoxy(50,27);write('(o)');
gotoxy(80,27);write('(o)');
gotoxy(1,28);write('========================================================================================================================');
textbackground(magenta);
gotoxy(50,25);write('  T  O  Y  O  T  A   ');
readln;
end;

procedure tabel(data_mobil:Tarr_mobil);
var
  i:integer;
begin
clrscr;
textbackground(cyan);clrscr;
textcolor(white);
   gotoxy(40,3);writeln('DATA MOBIL');delay(300);
   gotoxy(20,4);  writeln('=====================================================');delay(300);
   gotoxy(20,5);  writeln('| KODE |    MERK   |     TYPE    |       HARGA      |');delay(300);
   gotoxy(20,6);  writeln('+------+-----------+-------------+------------------+');delay(300);

   for i:=1 to 6 do
   begin
      gotoxy(20,i+6);  writeln('|',i:6,'|', data_mobil[i].merk:11,'|',data_mobil[i].tipe:13,'|  Rp.',data_mobil[i].harga:13,'|');delay(300);
   end;

   gotoxy(20,13); writeln('=====================================================');delay(300);
   gotoxy(22,14); writeln('             "INGAT KODE YANG ANDA BELI              ');
   delay(300);
   readln;
end;

procedure beli(var trans:Tarr_trans;data_mobil:Tarr_mobil);
var
  i,n,a:integer;
begin
clrscr;
textbackground(magenta);clrscr;
textcolor(yellow);
   write('JUMLAH PEMBELIAN : '); readln(n);delay(300);
   for i:= 1 to n do
      begin
         with trans[1] do
         begin
             jml_pembelian:=n;
             writeln('Barang ke -',i);delay(300);
             write('MERK MOBIL YANG INGIN  DIBELI : '); readln(a);delay(300);
                    dtrans[i].kode := a;                              
                    writeln('MERK                          : ',data_mobil[a].merk);delay(300);
                    writeln('TYPE                          : ',data_mobil[a].tipe);delay(300);
                    write('JUMLAH BARANG                 : '); readln(dtrans[i].jml);delay(300);
                    writeln('HARGA                         : ',data_mobil[a].harga);delay(300);
                    dtrans[i].total  := data_mobil[a].harga*dtrans[i].jml;
                    writeln('TOTAL                         : ',dtrans[i].total);
                    readln;
             bayar_cash := bayar_cash + dtrans[i].total;       
         end;
      end;
end;

procedure tulis;
var
  DT : text;
  i,n : integer;
  ch : char;  
begin
     assign(DT,'DT.txt');
     {$I-}
     reset(DT);
     {$I+}
     if IOResult=0 then
        begin
           write('File DT.txt sudah ada di drive, hapus dan buat file baru?[Y,T]');
           repeat ch:=readkey; until upcase(ch) in ['Y','T'];
           if upcase(ch)='T' then halt;
        end;
        rewrite(DT);
        for i:=1 to n do
            begin
                (* writeln(DT,data[i].mobil[i]);
                 writeln(DT,data[i].merk[i]);
                 writeln(DT,data[i].jml[i]);
                 writeln(DT,data[i].harga[i]);
                 writeln(DT,total);
                 writeln(DT,data[i].tot[i]:0:0);*)
            end;
        close(DT);
end;


procedure tambah;
var
  DT : text;
  i,n : integer;
begin
     assign(DT,'DT.txt');
     append(DT);
     for i:=1 to n do
         begin
             (* writeln(DT,data[i].mobil[i]);
              writeln(DT,data[i].merk[i]);
              writeln(DT,data[i].jml[i]);
              writeln(DT,data[i].harga[i]);
              writeln(DT,total);
              writeln(DT,data[i].tot[i]:0:0);*)
         end;
     close(DT);
end;


procedure baca;
var
  DT : text;
  i,n : integer;
begin
     assign(DT,'DT.txt');
     reset(DT);
     i:=1;
     while not eof(DT) do
     begin
         (* with data[i] do
               begin
                    readln(DT,mobil[i]);
                    readln(DT,merk[i]);
                    readln(DT,jml[i]);
                    readln(DT,harga[i]);
                    readln(dt,total);
                    readln(DT,tot[i]);
               end;*)
               inc(i);
     end;
     n:=i-1;
     close(DT);

end;


procedure output(var trans:Tarr_trans;data_mobil:Tarr_mobil);
var
  i,j,n,kiri,kanan,bawah,atas:integer;
  cara : string;
  total : longint;
begin
     clrscr;
     textbackground(black);
     clrscr;
     textcolor(cyan);
     for i:=1 to 30 do
     for j:=1 to 120 do write(chr(177));
     kiri:=15; kanan:=100; bawah:=28; atas:=5;
     window(kiri,atas,kanan,bawah);
     textbackground(magenta);clrscr;delay(300);
     textcolor(yellow);
     gotoxy(35,2); writeln(' ARMADA PUTRA MOTOR');
     gotoxy(15,3); writeln('Jln. Tuanku Imam Bonjol gg syechsamah,Binjai Kota,Binjai');
     gotoxy(15,4); writeln('==========================================================');
     gotoxy(3, 6); write('Nama Pembeli : '); readln(trans[1].nama);
     gotoxy(3, 8); writeln('-------------------------------------------------------------------------------');
     gotoxy(3, 9); writeln('|No|   MERK    |    TYPE   |  JUMLAH  |      HARGA       |        TOTAL       |');
     gotoxy(3, 10); writeln('-------------------------------------------------------------------------------');
        n:= trans[1].jml_pembelian;
        for i:=1 to n do
        begin
           gotoxy(3,10+i); write('|');
           gotoxy(4,10+i); write(i);
            
				    gotoxy(6, 10+i); write('|   ',data_mobil[trans[1].dtrans[i].kode].merk);
            gotoxy(18,10+i); write('|   ',data_mobil[trans[1].dtrans[i].kode].tipe);
            gotoxy(30,10+i); write('|   ',trans[1].dtrans[i].jml);
            gotoxy(41,10+i); write('| Rp.  ',data_mobil[trans[1].dtrans[i].kode].harga);
            gotoxy(60,10+i); write('| Rp.  ',trans[1].dtrans[i].total);
            gotoxy(81,10+i); write('|');
                      
        end;
     gotoxy(3,11+n); writeln('-------------------------------------------------------------------------------');
     gotoxy(3,12+n); write('CARA BELI [CASH/KREDIT] : '); readln(cara);
     if cara='cash' then
     begin
          gotoxy(3,13+n); writeln('Total bayar : Rp. ',trans[1].bayar_cash);
     end
     else 
       if cara='kredit' then
          begin
           total := trans[1].bayar_cash;
           trans[1].bayar_kredit := total+(0.0835*total);
           trans[1].uang_muka   := 0.3*total;
           
           gotoxy(3,13+n); write('HARGA KREDIT  : Rp. ',trans[1].bayar_kredit:11:3);
           gotoxy(3,14+n); write('UANG MUKA     : Rp. ',trans[1].uang_muka:11:3);
           gotoxy(3,15+n); write('LAMA KREDIT   : '); read(trans[1].lama_kredit);
           trans[1].cicilan  := (trans[1].bayar_kredit-trans[1].uang_muka)/trans[1].lama_kredit;
           gotoxy(3,16+n); write('CICILAN/BULAN : Rp. '); write(trans[1].cicilan:11:3);
          end;
     delay(300);     
     textcolor(white);
     gotoxy(64,16+n);write('---------------------');
     gotoxy(64,17+n);write('|  MATERAI   ^^  ^^ |');
     gotoxy(64,18+n);write('|   TEMPEL     ^^   |');
     gotoxy(64,19+n);write('| ---------  ^^  ^^ |');
     gotoxy(64,20+n);write('|6000               |');
     gotoxy(64,21+n);write('|ENAM RIBU RUPIAH   |');
     gotoxy(64,22+n);write('---------------------');
     delay(300);
     readln;
end;

procedure menu;
var
    data_mobil    : Tarr_mobil;
    trans         : Tarr_trans;
    i,j           : integer;
    ch            : char;
begin
    clrscr;
    textbackground(red);
    clrscr;
    textcolor(yellow);
    for i := 44 to 82 do
    begin
          gotoxy(i,9); write(chr(162));
          gotoxy(i,19); write(chr(162));
          delay(50);
    end;
    for j:= 10 to 18 do
    begin
          gotoxy(44,j);write(chr(162));
          gotoxy(82,j);write(chr(162));
          delay(50);
    end;
     isi_data(data_mobil);
     textcolor(white);
     gotoxy(47,12);writeln('1. Buat Data Baru');delay(300);
     gotoxy(47,13);writeln('2. Tambahkan Data Yang Mau Dibeli');delay(300);
     gotoxy(47,14);writeln('3. Lihat Data yang ada');delay(300);
     gotoxy(47,15);writeln('4. Keluar');delay(300);
     gotoxy(47,16);write('Pilihan : ');delay(300);
     repeat
         ch:=readkey
     until ch in['1','2','3','4'];
     readln;
     clrscr;
     case ch of
         '1':begin
                input;
                mobil;
                tabel(data_mobil);
                beli(trans,data_mobil);
                //tulis;
                output(trans,data_mobil);
             end;
         '2':begin
                beli(trans,data_mobil);
                //tambah;
            end;
         '3':begin
                //baca;
                output(trans,data_mobil);
             end;
         '4':halt;
    end;
end;

begin
    clrscr;    
    menu;
    clrscr;
    readln;
end.
