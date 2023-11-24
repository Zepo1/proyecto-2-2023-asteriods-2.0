unit CNave;

interface
uses
  Types,  Vcl.Graphics,
  Vcl.Controls, CBala;

type
  Nave = class

    color: TColor;

    ancho : integer;
    alto  : integer;

    Balas : Array of Bala;
  private
    //Bitmap Nave
    BtNave: TBitmap;
    BtBala: TBitmap;

  public
    constructor Create( color: TColor; ancho: integer; alto: integer );
    procedure dibujarNave;
    procedure dibujarBala;
    procedure setBtNave();
    function getBtNave(): TBitmap;
    procedure addBala;

  end;

implementation

{ Nave }

procedure Nave.addBala;
var
  b : Bala;
begin
  b := Bala.Create(clYellow,10,10);
  SetLength(Balas, Length(Balas) + 1);
  Balas[High(Balas)] := b;

  dibujarBala();
end;

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

procedure Nave.dibujarBala;
var
  b: Bala;
begin
 // Recorrer el array usando un bucle for
  for b in Balas do
  begin

  end;
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
