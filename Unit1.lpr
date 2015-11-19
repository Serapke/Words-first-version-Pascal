program Unit1;
uses Crt, SysUtils;

{------------------------------------------------------------------------------}
Procedure Password;
const Quick = 400;
      Slow = 1500;
var
    key, guess : string;
begin
 key := 'Winter is coming';
 ClrScr; TextColor(White);
 Window(20, 7, 60, 8); TextBackground(Red); ClrScr;
 WriteLn('             Game of Thrones');
 repeat
  Window(20,8,60,12);
  TextBackground(White);
  TextColor(Black);
  Clrscr;
  Write('Password: ');
  TextColor(blue);
  ReadLn(guess);
  Delay(Quick);
  if guess <> key then
   begin
    TextColor(Red);
    GotoXY(15,3);
    WriteLn('Incorrect password!');
    Delay(Slow);
   end;
 until key = guess;
end;
{------------------------------------------------------------------------------}
Procedure MainMenu(var x : char);
begin
 Window(1,1,80,25);
 TextBackground(Black);
 ClrScr;
 TextColor(White);
 Repeat
  Clrscr;
  WriteLn('----------------');
  WriteLn('Choose:');
  WriteLn('----------------');
  WriteLn('A) 1st practise;');
  WriteLn('B) 2nd practise;');
  WriteLn('C) 3rd practise;');
  WriteLn('D) 4th practise;');
  WriteLn('E) Shuffle it.');
  WriteLn('----------------');
  Write('Your choice: ');
  ReadLn(x);
  WriteLn('----------------');
  x := UpCase(x);
 until (x = 'A') or (x = 'B') or (x = 'C') or (x = 'D') or (x = 'E') or (x = 'F');
end;
{------------------------------------------------------------------------------}
Procedure SubMenuA(x : char; var y : string);
begin
 ClrScr;
 if x = 'A' then
  begin
   Repeat
    Clrscr;
    WriteLn('------------------------');
    Writeln('Choose:');
    WriteLn('------------------------');
    Writeln('A1) English - Lithuanian');
    Writeln('A2) Lithuanian - English');
    WriteLn('------------------------');
    Write('Your choice: ');
    Readln(y);
    WriteLn('------------------------');
    y := UpperCase(y);
   Until (y = 'A1') or (y = 'A2');
  end;
end;
{------------------------------------------------------------------------------}
Procedure SubMenuB(x : char; var y : string);
begin
 ClrScr;
 if (x = 'B') then
  begin
   repeat
    Clrscr;
    WriteLn('------------------------');
    Writeln('Choose:');
    WriteLn('------------------------');
    Writeln('B1) English - Lithuanian');
    Writeln('B2) Lithuanian - English');
    WriteLn('------------------------');
    Write('Choice: ');
    Readln(y);
    WriteLn('------------------------');
    y := UpperCase(y);
   until (y = 'B1') or (y = 'B2');
  end;
end;
{------------------------------------------------------------------------------}
Procedure SubMenuC(x : char; var y : string);
begin
 ClrScr;
 if (x = 'C') then
  begin
   Repeat
    Clrscr;
    WriteLn('------------------------');
    Writeln('Choose:');
    WriteLn('------------------------');
    Writeln('C1) English - Lithuanian');
    Writeln('C2) Lithuanian - English');
    WriteLn('------------------------');
    Write('Choise: ');
    Readln(y);
    WriteLn('------------------------');
    y := UpperCase(y);
   Until (y = 'C1') or (y = 'C2');
  end;
end;
{------------------------------------------------------------------------------}
Procedure SubMenuD(x : char; var y : string);
begin
 ClrScr;
 if (x = 'D') then
  begin
   Repeat
    Clrscr;
    WriteLn('------------------------');
    Writeln('Choose:');
    WriteLn('------------------------');
    Writeln('D1) English - Lithuanian');
    Writeln('D2) Lithuanian - English');
    WriteLn('------------------------');
    Write('Choise: ');
    Readln(y);
    WriteLn('------------------------');
    y := UpperCase(y);
   Until (y = 'D1') or (y = 'D2');
  end;
end;
{------------------------------------------------------------------------------}
Procedure SubMenuE(x : char; var y : string);
begin
 ClrScr;
 if (x = 'E') then
  begin
   Repeat
    Clrscr;
    WriteLn('------------------------');
    Writeln('Choose:');
    WriteLn('------------------------');
    Writeln('E1) English - Lithuanian');
    Writeln('E2) Lithuanian - English');
    WriteLn('------------------------');
    Write('Choise: ');
    Readln(y);
    WriteLn('------------------------');
    y := UpperCase(y);
   Until (y = 'E1') or (y = 'E2');
  end;
end;
{------------------------------------------------------------------------------}
Procedure A1(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'A1') then
  begin
   ClrScr;
   Write('hackles - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'suns karciai') and (g <> 'arklio karciai') and (g <> 'karciai') and (g <> 'neislaikyti') and (g <> 'gaidzio kaklo plunksnos') and (g <> 'kaklo plunksnos') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (suns, arklio) karciai, (gaidzio) kaklo plunksnos');
     TextColor(White);
    end;
   Write('slender - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'lieknas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: lieknas');
     TextColor(White);
    end;
   Write('mounted - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'raitas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: raitas');
     TextColor(White);
    end;
   Write('tower - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'kysoti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: kysoti');
     TextColor(White);
    end;
   Write('supple - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'lankstus') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: lankstus');
     TextColor(White);
    end;
   Write('gleam - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'spindeti') and (g <> 'sviesti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: spindeti, sviesti');
     TextColor(White);
    end;
   Write('layer - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sluoksnis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sluoksnis');
     TextColor(White);
    end;
   Write('vocation - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'pasaukimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: pasaukimas');
     TextColor(White);
    end;
   Write('insofar as - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'tiek, kiek') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: tiek, kiek');
     TextColor(White);
    end;
   Write('sable - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sabalo kailis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sabalo kailis');
     TextColor(White);
    end;
   Write('reflect - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'apmastyti') and (g <> 'mastyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (ap)mastyti');
     TextColor(White);
    end;
   Write('adjust - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sureguliuoti') and (g <> 'prisitaikyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: prisitaikyti, sureguliuoti');
     TextColor(White);
    end;
   Write('drape - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'apmusalas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: apmusalas');
     TextColor(White);
    end;
   Write('clad - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'aprengtas') and (g <> 'apsirenges') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: aprengtas, apsirenges');
     TextColor(White);
    end;
   Write('cocksure - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'tikras') and (g <> 'isitikines') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: tikras, isitikines');
     TextColor(White);
    end;
   Write('pace - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'greitis') and (g <> 'tempas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: greitis, tempas');
     TextColor(White);
    end;
   Write('deign - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'teiktis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: teiktis');
     TextColor(White);
    end;
   Write('sheath - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'makstis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: makstis');
     TextColor(White);
    end;
   Write('acquiescence - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sutikimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sutikimas');
     TextColor(White);
    end;
   Write('grope - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'ieskoti apgraibomis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: ieskoti apgraibomis');
     TextColor(White);
    end;
   Write('parry - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'apsigynimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: apsigynimas');
     TextColor(White);
    end;
   Write('well - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'plusti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: plusti');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure A2(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'A2') then
  begin
   ClrScr;
   Write('(suns, arklio) karciai, (gaidzio) kaklo plunksnos - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'hackles') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: hackles');
     TextColor(White);
    end;
   Write('lieknas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'slender') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: slender');
     TextColor(White);
    end;
   Write('raitas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'mounted') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: mounted');
     TextColor(White);
    end;
   Write('kysoti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'tower') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: tower');
     TextColor(White);
    end;
   Write('lankstus - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'supple')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: supple');
     TextColor(White);
    end;
   Write('spindeti, sviesti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gleam') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gleam');
     TextColor(White);
    end;
   Write('sluoksnis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'layer') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: layer');
     TextColor(White);
    end;
   Write('pasaukimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'vocation') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: vocation');
     TextColor(White);
    end;
   Write('tiek, kiek - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'insofar as') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: insofar as');
     TextColor(White);
    end;
   Write('sabalo kailis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sable')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sable');
     TextColor(White);
    end;
   Write('(ap)mastyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'reflect') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: reflect');
     TextColor(White);
    end;
   Write('sureguliuoti, prisitaikyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'adjust') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: adjust');
     TextColor(White);
    end;
   Write('apmusalas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'drape') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: drape');
     TextColor(White);
    end;
   Write('aprengtas, apsirenges - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'clad')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: clad');
     TextColor(White);
    end;
   Write('tikras, isitikines - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'cocksure')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: cocksure');
     TextColor(White);
    end;
   Write('greitis, tempas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'pace') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: pace');
     TextColor(White);
    end;
   Write('teiktis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'deign') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: deign');
     TextColor(White);
    end;
   Write('makstis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sheath') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sheath');
     TextColor(White);
    end;
   Write('sutikimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'acquiescence')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: acquiescence');
     TextColor(White);
    end;
   Write('ieskoti apgraibomis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'grope') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: grope');
     TextColor(White);
    end;
   Write('apsigynimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'parry') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: parry');
     TextColor(White);
    end;
   Write('plusti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'well')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: well');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure B1(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'B1') then
  begin
   ClrScr;
   Write('crispness - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gaivumas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gaivumas');
     TextColor(White);
    end;
   Write('hint - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'uzsiminti') and (g <> 'padaryti uzuomina') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: uzsiminti, padaryti uzuomina');
     TextColor(White);
    end;
   Write('forth - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'pirmyn') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: pirmyn');
     TextColor(White);
    end;
   Write('behead - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nukirsti galva') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nukirsti galva');
     TextColor(White);
    end;
   Write('deem - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'manyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: manyti');
     TextColor(White);
    end;
   Write('hearth - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'zidinys') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: zidinys');
     TextColor(White);
    end;
   Write('ward - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'ginklanesys') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: ginklanesys');
     TextColor(White);
    end;
   Write('bastard - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nesantuokinis') and (g <> 'pavainikis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nesantuokinis, pavainikis');
     TextColor(White);
    end;
   Write('bolt - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'leisti begti') and (g <> 'mestis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: leisti begti, mestis');
     TextColor(White);
    end;
   Write('stump - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'kelmas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: kelmas');
     TextColor(White);
    end;
   Write('forfeit - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'prarastas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: prarastas');
     TextColor(White);
    end;
   Write('bannerman - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'veliavnesys') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: veliavnesys');
     TextColor(White);
    end;
   Write('antler - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'elnio ragai') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: elnio ragai');
     TextColor(White);
    end;
   Write('dismay - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'isgastis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: isgastis');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure B2(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'B2') then
  begin
   ClrScr;
   Write('gaivumas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'crispness') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: crispness');
     TextColor(White);
    end;
   Write('uzsiminti, padaryti uzuomina - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'hint') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: hint');
     TextColor(White);
    end;
   Write('pirmyn - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'forth') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: forth');
     TextColor(White);
    end;
   Write('nukirsti galva - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'behead') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: behead');
     TextColor(White);
    end;
   Write('manyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'deem')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: deem');
     TextColor(White);
    end;
   Write('zidinys - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'hearth') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: hearth');
     TextColor(White);
    end;
   Write('ginklanesys - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'ward') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: ward');
     TextColor(White);
    end;
   Write('nesantuokinis, pavainikis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'bastard') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: bastard');
     TextColor(White);
    end;
   Write('leistis begti, mestis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'bolt')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: bolt');
     TextColor(White);
    end;
   Write('kelmas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'stump') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: stump');
     TextColor(White);
    end;
   Write('prarastas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'forfeit') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: forfeit');
     TextColor(White);
    end;
   Write('veliavnesys - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'bannerman')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: bannerman');
     TextColor(White);
    end;
   Write('elnio ragai - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'antler')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: antler');
     TextColor(White);
    end;
   Write('isgastis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'dismay') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: dismay');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure C1(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'C1') then
  begin
   ClrScr;
   Write('moist - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'dregnas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: dregnas');
     TextColor(White);
    end;
   Write('decay - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gedimas') and (g <> 'puvimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gedimas, puvimas');
     TextColor(White);
    end;
   Write('anoint - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'patepti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: patepti');
     TextColor(White);
    end;
   Write('bark - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'zieve') and (g <> 'tosis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: zieve, tosis');
     TextColor(White);
    end;
   Write('forge - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nukalti') and (g <> 'kalti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (nu)kalti');
     TextColor(White);
    end;
   Write('rueful - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gailus') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gailus');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure C2(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'C2') then
  begin
   ClrScr;
   Write('dregnas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'moist') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: moist');
     TextColor(White);
    end;
   Write('gedimas, puvimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'decay') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: decay');
     TextColor(White);
    end;
   Write('patepti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'anoint') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: anoint');
     TextColor(White);
    end;
   Write('zieve, tosis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'bark') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: bark');
     TextColor(White);
    end;
   Write('(nu)kalti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'forge')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: forge');
     TextColor(White);
    end;
   Write('gailus - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'rueful') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: rueful');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure D1(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'D1') then
  begin
   ClrScr;
   Write('hold up - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'laikyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: laikyti');
     TextColor(White);
    end;
   Write('gown - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'vakarine suknia') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: vakarine suknia');
     TextColor(White);
    end;
   Write('inspection - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'apziurejimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: apziurejimas');
     TextColor(White);
    end;
   Write('caress - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'paglostyti') and (g <> 'glostyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (pa)glostyti');
     TextColor(White);
    end;
   Write('smooth - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'svelnus') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: svelnus');
     TextColor(White);
    end;
   Write('nigh - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'arti') and (g <> 'netoli') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: arti, netoli');
     TextColor(White);
    end;
   Write('pamper - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'islepinti') and (g <> 'lepinti') and (g <> 'ispaikinti') and (g <> 'lepinti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (is)lepinti, (is)paikinti');
     TextColor(White);
    end;
   Write('meekly - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'romiai') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: romiai');
     TextColor(White);
    end;
   Write('wistfully - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'ilgesingai') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: ilgesingai');
     TextColor(White);
    end;
   Write('estate - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'zemes valda') and (g <> 'dvaras') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: zemes valda, dvaras');
     TextColor(White);
    end;
   Write('scent - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'iskvepinti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: iskvepinti');
     TextColor(White);
    end;
   Write('fragrant - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'aromatingas') and (g <> 'kvapnus') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: aromatingas, kvapnus');
     TextColor(White);
    end;
   Write('enrapture - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'suzaveti') and (g <> 'zaveti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (su)zaveti');
     TextColor(White);
    end;
   Write('trifling - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nereiksmingas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nereiksmingas');
     TextColor(White);
    end;
   Write('affront - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'izeidimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: izeidimas');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure D2(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'D2') then
  begin
   ClrScr;
   Write('laikyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'hold up') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: hold up');
     TextColor(White);
    end;
   Write('vakarine suknia - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gown') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gown');
     TextColor(White);
    end;
   Write('apziurejimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'inspection') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: inspection');
     TextColor(White);
    end;
   Write('(pa)glostyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'caress') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: caress');
     TextColor(White);
    end;
   Write('svelnus - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'smooth')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: smooth');
     TextColor(White);
    end;
   Write('arti, netoli - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nigh') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nigh');
     TextColor(White);
    end;
   Write('(is)lepinti, (is)paikinti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'pamper') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: pamper');
     TextColor(White);
    end;
   Write('romiai - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'meekly') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: meekly');
     TextColor(White);
    end;
   Write('ilgesingai - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'wistfully') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: wistfully');
     TextColor(White);
    end;
   Write('zemes valda, dvaras - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'estate')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: estate');
     TextColor(White);
    end;
   Write('iskvepinti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'scent') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: scent');
     TextColor(White);
    end;
   Write('aromatingas, kvapnus - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'fragrant') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: fragrant');
     TextColor(White);
    end;
   Write('(su)zaveti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'enrapture') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: enrapture');
     TextColor(White);
    end;
   Write('nereiksmingas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'trifling')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: trifling');
     TextColor(White);
    end;
   Write('izeidimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'affront')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: affront');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure E1(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'E1') then
  begin
   ClrScr;
   Write('well - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'plusti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: plusti');
     TextColor(White);
    end;
   Write('dismay - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'isgastis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: isgastis');
     TextColor(White);
    end;
   Write('rueful - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gailus') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gailus');
     TextColor(White);
    end;
   Write('affront - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'izeidimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: izeidimas');
     TextColor(White);
    end;
   Write('grope - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'ieskoti apgraibomis') and (g <> 'grabalioti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: grabalioti, ieskoti apgraibomis');
     TextColor(White);
    end;
   Write('bannerman - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'veliavnesys') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: veliavnesys');
     TextColor(White);
    end;
   Write('bark - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'zieve') and (g <> 'tosis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: zieve, tosis');
     TextColor(White);
    end;
   Write('enrapture - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'suzaveti') and (g <> 'zaveti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (su)zaveti');
     TextColor(White);
    end;
   Write('sheath - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'makstis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: makstis');
     TextColor(White);
    end;
   Write('forfeit - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'prarastas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: prarastas');
     TextColor(White);
    end;
   Write('decay - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gedimas') and (g <> 'puvimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gedimas, puvimas');
     TextColor(White);
    end;
   Write('scent - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'iskvepinti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: iskvepinti');
     TextColor(White);
    end;
   Write('pace - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'greitis') and (g <> 'tempas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: greitis, tempas');
     TextColor(White);
    end;
   Write('bolt - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'leistis begti') and (g <> 'mestis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: leistis begti, mestis');
     TextColor(White);
    end;
   Write('forge - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nukalti') and (g <> 'kalti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nukalti, kalti');
     TextColor(White);
    end;
   Write('wistfully - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'ilgesingai') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: ilgesingai');
     TextColor(White);
    end;
   Write('clad - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'aprengtas') and (g <> 'apsirenges') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: aprengtas, apsirenges');
     TextColor(White);
    end;
   Write('ward - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'ginklanesys') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: ginklanesys');
     TextColor(White);
    end;
   Write('anoint - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'patepti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: patepti');
     TextColor(White);
    end;
   Write('pamper - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'islepinti') and (g <> 'lepinti') and (g <> 'ispaikinti') and (g <> 'paikinti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (is)lepinti, (is)paikinti');
     TextColor(White);
    end;
   Write('adjust - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sureguliuoti') and (g <> 'prisitaikyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sureguliuoti, prisitaikyti');
     TextColor(White);
    end;
   Write('deem - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'manyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: manyti');
     TextColor(White);
    end;
   Write('moist - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'dregnas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: dregnas');
     TextColor(White);
    end;
   Write('forth - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'pirmyn') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: pirmyn');
     TextColor(White);
    end;
   Write('sable - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sabalo kailis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sabalo kailis');
     TextColor(White);
    end;
   Write('smooth - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'svelnus') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: svelnus');
     TextColor(White);
    end;
   Write('inspection - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'apziurejimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: apziurejimas');
     TextColor(White);
    end;
   Write('vocation - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'pasaukimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: pasaukimas');
     TextColor(White);
    end;
   Write('crispness - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gaivumas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gaivumas');
     TextColor(White);
    end;
   Write('hold up - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'laikyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: laikyti');
     TextColor(White);
    end;
   Write('gleam - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'spindeti') and (g <> 'sviesti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: spindeti, sviesti');
     TextColor(White);
    end;
   Write('antler - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'elnio ragai') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: elnio ragai');
     TextColor(White);
    end;
   Write('trifling - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nereiksmingas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nereiksmingas');
     TextColor(White);
    end;
   Write('tower - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'kysoti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: kysoti');
     TextColor(White);
    end;
   Write('fragrant - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'aromatingas') and (g <> 'kvapnus') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: kvapnus, aromatingas');
     TextColor(White);
    end;
   Write('slender - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'lieknas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: lieknas');
     TextColor(White);
    end;
   Write('stump - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'kelmas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: kelmas');
     TextColor(White);
    end;
   Write('estate - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'zemes valda') and (g <> 'dvaras') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: zemes valda, dvaras');
     TextColor(White);
    end;
   Write('parry - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'apsigynimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: apsigynimas');
     TextColor(White);
    end;
   Write('bastard - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nesantuokinis') and (g <> 'pavainikis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nesantuokinis, pavainikis');
     TextColor(White);
    end;
   Write('meekly - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'romiai') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: romiai');
     TextColor(White);
    end;
   Write('acquiescence - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sutikimas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sutikimas');
     TextColor(White);
    end;
   Write('hearth - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'zidinys') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: zidinys');
     TextColor(White);
    end;
   Write('nigh - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'arti') and (g <> 'netoli') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: arti, netoli');
     TextColor(White);
    end;
   Write('deign - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'teiktis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: teiktis');
     TextColor(White);
    end;
   Write('behead - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nukirsti galva') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nukirsti galva');
     TextColor(White);
    end;
   Write('caress - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'paglostyti') and (g <> 'glostyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (pa)glostyti');
     TextColor(White);
    end;
   Write('cocksure - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'tikras') and (g <> 'isitikines') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: tikras, isitikines');
     TextColor(White);
    end;
   Write('hint - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'uzsiminti') and (g <> 'padaryti uzuomina') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: uzsiminti ,padaryti uzuomina');
     TextColor(White);
    end;
   Write('gown - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'vakarine suknia') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: vakarine suknia');
     TextColor(White);
    end;
   Write('drape - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'apmusalas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: apmusalas');
     TextColor(White);
    end;
   Write('reflect - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'apmastyti') and (g <> 'mastyti') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (ap)mastyti');
     TextColor(White);
    end;
   Write('insofar as - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'tiek, kiek') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: tiek, kiek');
     TextColor(White);
    end;
   Write('layer - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sluoksnis') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sluoksnis');
     TextColor(White);
    end;
   Write('supple - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'lankstus') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: lankstus');
     TextColor(White);
    end;
   Write('mounted - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'raitas') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: raitas');
     TextColor(White);
    end;
   Write('hackles - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'suns karciai') and (g <> 'karciai') and (g <> 'arklio karciai') and (g <> 'gaidzio kaklo plunksnos') and (g <> 'kaklo plunsknos') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: (suns, arklio) karciai, (gaidzio) kaklo plunksnos');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure E2(y : string);
    var g : string;         // spejimas
        n,                  // klaidos
        i,                  // zodziu skaicius
        t : integer;        // teisingi spejimai
        vid : real;           // vidurkis
begin
 i := 0; t := 0; n := 0;
 if (y = 'E2') then
  begin
   ClrScr;
   Write('apsigynimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'parry') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: parry');
     TextColor(White);
    end;
   Write('elnio ragai - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'antler') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: antler');
     TextColor(White);
    end;
   Write('(nu)kalti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'forge') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: forge');
     TextColor(White);
    end;
   Write('nereiksmingas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'trifling') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: trifling');
     TextColor(White);
    end;
   Write('sutikimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'acquiescence')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: acquiescence');
     TextColor(White);
    end;
   Write('patepti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'anoint') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: anoint');
     TextColor(White);
    end;
   Write('aromatingas, kvapnus - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'fragrant') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: fragrant');
     TextColor(White);
    end;
   Write('teiktis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'deign') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: deign');
     TextColor(White);
    end;
   Write('kelmas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'stump')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: stump');
     TextColor(White);
    end;
   Write('dregnas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'moist') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: moist');
     TextColor(White);
    end;
   Write('zemes valda, dvaras - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'estate') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: estate');
     TextColor(White);
    end;
   Write('tikras, isitikines - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'cocksure') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: cocksure');
     TextColor(White);
    end;
   Write('nesantuokinis, pavainikis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'bastard')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: bastard');
     TextColor(White);
    end;
   Write('rueful - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gailus')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gailus');
     TextColor(White);
    end;
   Write('romiai - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'meekly') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: meekly');
     TextColor(White);
    end;
   Write('apmusalas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'drape') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: drape');
     TextColor(White);
    end;
   Write('zidinys - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'hearth') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: hearth');
     TextColor(White);
    end;
   Write('zieve, tosis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'bark')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: bark');
     TextColor(White);
    end;
   Write('arti, netoli - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'nigh') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: nigh');
     TextColor(White);
    end;
   Write('(ap)mastyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'reflect') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: reflect');
     TextColor(White);
    end;
   Write('nukirsti galva - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'behead')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: behead');
     TextColor(White);
    end;
   Write('gedimas, puvimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'decay') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: decay');
     TextColor(White);
    end;
   Write('(pa)glostyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'caress') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: caress');
     TextColor(White);
    end;
   Write('tiek, kiek - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'insofar as') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: insofar as');
     TextColor(White);
    end;
   Write('uzsiminti, padaryti uzuomina - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'hint') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: hint');
     TextColor(White);
    end;
   Write('vakarine suknia - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gown')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gown');
     TextColor(White);
    end;
   Write('sluoksnis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'layer') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: layer');
     TextColor(White);
    end;
   Write('sluoksnis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'layer') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: layer');
     TextColor(White);
    end;
   Write('isgastis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'dismay') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: dismay');
     TextColor(White);
    end;
   Write('lankstus - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'supple') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: supple');
     TextColor(White);
    end;
   Write('veliavnesys - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'bannerman')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: bannerman');
     TextColor(White);
    end;
   Write('izeidimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'affront') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: affront');
     TextColor(White);
    end;
   Write('raitas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'mounted') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: mounted');
     TextColor(White);
    end;
   Write('prarastas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'forfeit') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: forfeit');
     TextColor(White);
    end;
   Write('(su)zaveti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'enrapture')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: enrapture');
     TextColor(White);
    end;
   Write('(suns, arklio) karciai, (gaidzio) kaklo plunksnos - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'hackles')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: hackles');
     TextColor(White);
    end;
   Write('leistis begti, mestis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'bolt') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: bolt');
     TextColor(White);
    end;
   Write('iskvepinti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'scent') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: scent');
     TextColor(White);
    end;
   Write('plusti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'well') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: well');
     TextColor(White);
    end;
   Write('ginklanesys - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'ward')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: ward');
     TextColor(White);
    end;
   Write('ilgesingai - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'wistfully') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: wistfully');
     TextColor(White);
    end;
   Write('ieskoti apgraibomis, grabalioti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'grope') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: grope');
     TextColor(White);
    end;
   Write('manyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'deem')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: deem');
     TextColor(White);
    end;
   Write('(is)lepinti, (is)paikinti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'pamper') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: pamper');
     TextColor(White);
    end;
   Write('makstis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sheath') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sheath');
     TextColor(White);
    end;
   Write('pirmyn - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'forth') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: forth');
     TextColor(White);
    end;
   Write('svelnus - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'smooth') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: smooth');
     TextColor(White);
    end;
   Write('greitis, tempas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'pace')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: pace');
     TextColor(White);
    end;
   Write('gaivumas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'crispness') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: crispness');
     TextColor(White);
    end;
   Write('apziurejimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'inspection') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: inspection');
     TextColor(White);
    end;
   Write('aprengtas, apsirenges - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'clad') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: clad');
     TextColor(White);
    end;
   Write('laikyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'hold up') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: hold up');
     TextColor(White);
    end;
   Write('sureguliuoti, prisitaikyti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'adjust')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: adjust');
     TextColor(White);
    end;
   Write('sabalo kailis - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'sable') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: sable');
     TextColor(White);
    end;
   Write('pasaukimas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'vocation') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: vocation');
     TextColor(White);
    end;
   Write('spindeti, sviesti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'gleam') then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: gleam');
     TextColor(White);
    end;
   Write('kysoti - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'tower')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: tower');
     TextColor(White);
    end;
   Write('lieknas - ');
   ReadLn(g);
   i := i + 1;
   if (g <> 'slender')  then
    begin
     n := n + 1;
     TextColor(LightRed);
     WriteLn('Wrong!');
     TextColor(Green);
     WriteLn('Right answer is: slender');
     TextColor(White);
    end;

   ReadLn;
   ClrScr;
   t := i - n;
   vid := (t * 10) / i;
   Window(30, 7, 48, 18);
   TextBackground(Red);
   ClrScr;
   TextColor(White);
   GotoXY(1,2);
   WriteLn(' -----------------');
   GotoXY(2,3);
   Writeln('Results:');
   GotoXY(1,4);
   WriteLn(' -----------------');
   GotoXY(2,5);
   Writeln(' Words:       ',i);
   GotoXY(2,6);
   Writeln(' Right:       ',t);
   GotoXY(2,7);
   Writeln(' Mistakes:    ',n);
   GotoXY(2,8);
   Writeln(' Ratio:     ',t,'/',i);
   GotoXY(2,9);
   Writeln(' Rate:   ',vid:7:2);
   GotoXY(2,10);
   Writeln(' Mark:   ',vid:7:0);
   GotoXY(1,11);
   WriteLn(' -----------------');
   Readln;
   end;
end;
{------------------------------------------------------------------------------}
Procedure ShutDown(var re : char);
Begin
    Repeat
        ClrScr;
        Window(1,1,80,25);
        TextBackground(Black);
        ClrScr;
        Window(20,7,57,12);
        TextBackground(White);
        ClrScr;
        TextColor(Red);
        GoToXY(5, 3);
        Write('Do you want to restart? (Y/N): ');
        TextColor(Blue);
        Readln(re);
        re := Upcase(re);
    Until (re = 'Y') or (re = 'N');
end;
{----------------------------Pagrindine programa-------------------------------}
var
     Choise1 : char;        // naudojamas MainMenu
     Choise2 : string;      // naudojamas SubMenu
     Restart : char;        // Restart kintamasis

{$R *.res}

begin
 TextBackground(Black);
 Password;
 Repeat
    MainMenu(Choise1);
    SubMenuA(Choise1, Choise2);
    SubMenuB(Choise1, Choise2);
    SubMenuC(Choise1, Choise2);
    SubMenuD(Choise1, Choise2);
    SubMenuE(Choise1, Choise2);
    A1(Choise2);
    A2(Choise2);
    B1(Choise2);
    B2(Choise2);
    C1(Choise2);
    C2(Choise2);
    D1(Choise2);
    D2(Choise2);
    E1(Choise2);
    E2(Choise2);
    ShutDown(Restart);
 Until (Restart = 'N');
end.
