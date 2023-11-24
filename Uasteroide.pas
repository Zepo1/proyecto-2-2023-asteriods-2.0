unit Uasteroide;

interface
Uses Graphics;
Type
    Ball = Class
      Private
          Cx,Cy : Integer;
          R     : Integer;
          nivel : integer;
      Public
          Procedure setValues(x,y,nivel:Integer);
          Procedure Draw(Pantalla : TCanvas);
          Procedure Move(dx,dy:Integer);
          procedure setradio(niv:integer);
    End;

implementation

{ Ball }

procedure Ball.Draw(Pantalla: TCanvas);
begin
     Pantalla.pen.Color:=clwhite;
     Pantalla.Ellipse(Cx-r,Cy-r,Cx+r,Cy+r);
end;

procedure Ball.Move(dx, dy:Integer);
begin
     Cx:=Cx+dx;Cy:=Cy+dy;
end;

///nivel de los sateroides
procedure Ball.setradio(niv: integer);
begin
   case  niv of
      1: R:=20;
      2: R:=50;
      3: R:=80;
   end;
end;

procedure Ball.setValues(x, y, nivel: Integer);

begin
     Cx:=x;   Cy:=y;
     setradio(nivel);

end;

end.
