program Task1Page19;
// ������� ��� �����. ���� ��� ����� ���� ������� ������ ��������������
// ������������, �������� �� � ������� ����������� � ��������� �������
// ����������� ������������.


{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

var a, b, c, bigKatet, smallKatet, gipotenuza : Integer;

begin
  //������������ ������� �� ������� �������� CP1251 (Windows-1251).
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  writeln('����� �����, ��������:');
  readln(a);
  writeln('����� �����, ��������:');
  readln(b);
  writeln('����� �����, ��������:');
  readln(c);

  //�����������, ��� ���������� � - ����������
  gipotenuza := a;
  //���������� ������ � ������� �����������
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

  // �������� ���� �������������, ��� ��� ���������� � - ����������
  if(gipotenuza < b) then
    //������������� �� �����, ������������� �����������, ��� b - ����������
    begin
      gipotenuza:= b;
      //���������� ������ � ������� �����������
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
    //������������� ����� �� �����, ������������� ��� ����� � - ����������
    begin
      gipotenuza:= c;
      //���������� ������ � ������� �����������
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

    //��������, �������� �� ��� ����� �������� ������ �������������� ������������
    if(gipotenuza*gipotenuza = bigKatet*bigKatet + smallKatet*smallKatet) then
      begin
        writeln('��, ��� ������������� ����������� :)');
        writeln('����� ��� ������ � ������� �����������:');
        write('1) ');
        writeln(smallKatet);
        write('2) ');
        writeln(bigKatet);
        write('3) ');
        writeln(gipotenuza);
        writeln('������� �������������:');
        writeln(bigKatet*smallKatet/2);
      end
    else
      begin
        writeln('���, ��� �� ������������� ����������� :(')
      end;

    //����� ������� �� ���������
    readln;

end.
