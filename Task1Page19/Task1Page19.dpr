program Task1Page19;
// Введите три числа. Если ини могут быть длинами сторон прямоугольного
// треугольника, выведите их в порядке возрастания и вычислите площадь
// полученного треугольника.


{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

var a, b, c, bigKatet, smallKatet, gipotenuza : Integer;

begin
  //Переключение консоли на кодовую страницу CP1251 (Windows-1251).
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  writeln('Введи число, мазафака:');
  readln(a);
  writeln('Введи число, мазафака:');
  readln(b);
  writeln('Введи число, мазафака:');
  readln(c);

  //Предположим, что переменная а - гипотенуза
  gipotenuza := a;
  //Расположим катеты в порядке возрастания
  if(b<c) then
    begin
      bigKatet:= c;
      smallKatet:= b;
    end
  else
    begin
      bigKatet:= b;
      smallKatet:= c;
    end;

  // Проверим наше предположение, что что переменная а - гипотенуза
  if(gipotenuza < b) then
    //Предположение не верно, следовательно предположим, что b - гипотенуза
    begin
      gipotenuza:= b;
      //Расположим катеты в порядке возрастания
      if(a < c) then
        begin
          bigKatet:=c;
          smallKatet:=a;
        end
      else
        begin
          bigKatet:=a;
          smallKatet:=c;
        end;
    end;

  if(gipotenuza < c) then
    //Предположение снова не верно, следовательно сто пудов с - гипотенуза
    begin
      gipotenuza:= c;
      //Расположим катеты в порядке возрастания
      if(a < b) then
        begin
          bigKatet:=b;
          smallKatet:=a;
        end
      else
        begin
          bigKatet:=a;
          smallKatet:=b;
        end;
    end;

    //Проверим, являются ли эти числа длиннами сторон прямоугольного треугольника
    if(gipotenuza*gipotenuza = bigKatet*bigKatet + smallKatet*smallKatet) then
      begin
        writeln('Да, это прямоугольный треугольник :)');
        writeln('Длины его сторон в порядке возрастания:');
        write('1) ');
        writeln(smallKatet);
        write('2) ');
        writeln(bigKatet);
        write('3) ');
        writeln(gipotenuza);
        writeln('Площадь треугорльника:');
        writeln(bigKatet*smallKatet/2);
      end
    else
      begin
        writeln('Нет, это не прямоугольный треугольник :(')
      end;

    //Чтобы консоль не закрылась
    readln;

end.
