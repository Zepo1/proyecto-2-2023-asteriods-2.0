unit Pantalla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Types, CNave,Uasteroide, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    ObjNave : Nave;
    B : Ball;

  public
    { Public declarations }
    procedure dibujarNave(Cx: integer; Cy: integer);
    procedure dibujarBala( Cx: integer; Cy: integer );
    procedure limpiarPantalla(Canvas: TCanvas; ColorFondo: TColor);
  end;

var
  Form1: TForm1;
  Cx,Cy: Integer;
  numeroMovimiento: integer;
  dimensionPantallaX, dimensionPantallaY: integer;

implementation

{$R *.dfm}
//-------------------------------------------------------------
procedure TForm1.FormCreate(Sender: TObject);
begin

   B := Ball.Create;
   B.setValues(100,100,3);

  dimensionPantallaX := Screen.Width;
  dimensionPantallaY := Screen.Height;
  numeroMovimiento := 50;
  Cx := dimensionPantallaX div 2;
  Cy := dimensionPantallaY div 2;
  //Objeto instanciado = Se coloca el color de la nave y su ancho y alto
  ObjNave := Nave.Create( clYellow, 50, 50 );
end;
//-------------------------------------------------------------
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
      27: Form1.Close;
      //A
      65:
        begin
          Cx := Cx - numeroMovimiento;
          if Cx < 0 then
            Cx := dimensionPantallaX;

          dibujarNave(Cx, Cy);
        end;
      //S
      83:
        begin
          Cy := Cy + numeroMovimiento;
          if (Cy >= dimensionPantallaY - ObjNave.alto) then
            Cy := dimensionPantallaY - ObjNave.alto;

          dibujarNave(Cx, Cy);
        end;
      //D
      68:
        begin
          Cx := Cx + numeroMovimiento;
          if Cx > dimensionPantallaX then
            Cx := 0;

          dibujarNave(Cx, Cy);
        end;
      //W
      87:
        begin
          Cy := Cy - numeroMovimiento;
          if Cy < 0 then
            Cy := ObjNave.alto;

          dibujarNave(Cx, Cy);
        end;
    end;
end;
//-------------------------------------------------------------
procedure TForm1.FormPaint(Sender: TObject);
begin
  dibujarNave(Cx, Cy);
  B.Draw(Canvas);
end;
//-------------------------------------------------------------
procedure TForm1.limpiarPantalla(Canvas: TCanvas; ColorFondo: TColor);
begin
    Canvas.Brush.Color := ColorFondo;
    Canvas.FillRect(Canvas.ClipRect);
end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
     B.Move(7,1);
     Repaint;
end;

//-------------------------------------------------------------
procedure TForm1.dibujarBala(Cx, Cy: integer);
begin

end;
//-------------------------------------------------------------
procedure TForm1.dibujarNave(Cx: integer; Cy: integer);
begin
    limpiarPantalla(Canvas, clWindowText);
    Canvas.Draw( Cx, Cy, ObjNave.getBtNave);
end;

end.