unit CBala;

interface
uses
  Vcl.Graphics,
  Vcl.Controls;
type

  Bala = class

    color : TColor;

  private
    //Bitmap Bala
    BtBala: TBitmap;

  public
     constructor Create( color: TColor; ancho: integer; alto: integer );
     procedure dibujarBala;
     function getBala : TBitmap;

  end;

implementation

{ Bala }

constructor Bala.Create(color: TColor; ancho, alto: integer);
begin
  Self.color := color;

//  dibujarBala();
end;

procedure Bala.dibujarBala;
begin
  // Dibuja Bala
  getBala().Canvas.Brush.Color := color;
  getBala().Canvas.Ellipse(getBala().Canvas.ClipRect);
end;

function Bala.getBala: TBitmap;
begin
  Result := BtBala;
end;

end.
