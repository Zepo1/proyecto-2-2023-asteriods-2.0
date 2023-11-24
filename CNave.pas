unit CNave;

interface
uses
  Types,  Vcl.Graphics,
  Vcl.Controls;

type
  Nave = class

    color: TColor;

    ancho : integer;
    alto  : integer;
  private
    //Bitmap Nave
    BtNave: TBitmap;
    BtBala: TBitmap;

  public
    constructor Create( color: TColor; ancho: integer; alto: integer );
    procedure dibujarNave;
    procedure setBtNave();
    function getBtNave(): TBitmap;

  end;

implementation

{ Nave }

constructor Nave.Create( color: TColor; ancho: integer; alto: integer);

begin
  Self.color := color;
  Self.ancho := ancho;
  Self.alto := alto;
  setBtNave();
  // Puedes cambiar clSkyBlue por el color que desees
  // Establece el color de fondo del Canvas del formulario

  dibujarNave();
end;

procedure Nave.setBtNave;
begin
  // Crea un objeto TBitmap para almacenar el dibujo
  BtNave:= TBitmap.Create;
  BtNave.Width := ancho;
  BtNave.Height := alto;
  BtNave.Canvas.Brush.Color := clNone;
  BtNave.Canvas.FillRect(BtNave.Canvas.ClipRect);
end;

function Nave.getBtNave: TBitmap;
begin
  Result := BtNave;
end;

procedure Nave.dibujarNave;
begin
  // Dibuja La nave
  getBtNave().Canvas.Brush.Color := color;
  getBtNave().Canvas.Polygon([
    TPoint.Create(0,alto),
    TPoint.Create( ancho div 2, 0),
    TPoint.Create(ancho, alto)
  ]);

end;

end.
