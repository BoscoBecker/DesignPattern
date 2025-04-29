unit Utils;

interface

uses System.SysUtils, System.Types, Winapi.Windows, Vcl.Graphics;

type
  FileImage = class
    class procedure file_put_contents(const imagePath, waterMark: string);
end;


implementation

class procedure FileImage.file_put_contents(const imagePath, waterMark: string);
var
  Bitmap: TBitmap;
  LogFont: TLogFont;
  FontHandle: HFONT;
  OldFont: HGDIOBJ;
begin
  Bitmap := TBitmap.Create;
  try
    Bitmap.Width := 400;
    Bitmap.Height := 400;
    Bitmap.PixelFormat := pf24bit;

    Bitmap.Canvas.Brush.Color := clWhite;
    Bitmap.Canvas.FillRect(Rect(0, 0, Bitmap.Width, Bitmap.Height));

    FillChar(LogFont, SizeOf(LogFont), 0);
    LogFont.lfHeight := 32;
    LogFont.lfEscapement := 450;
    LogFont.lfOrientation := 450;
    StrPCopy(LogFont.lfFaceName, 'Arial');
    LogFont.lfWeight := FW_BOLD;
    LogFont.lfItalic := 1;

    FontHandle := CreateFontIndirect(LogFont);
    OldFont := SelectObject(Bitmap.Canvas.Handle, FontHandle);

    SetTextColor(Bitmap.Canvas.Handle, RGB(180, 180, 180));
    SetBkMode(Bitmap.Canvas.Handle, TRANSPARENT);

    Bitmap.Canvas.TextOut(80, 180, waterMark);

    SelectObject(Bitmap.Canvas.Handle, OldFont);
    DeleteObject(FontHandle);

    Bitmap.SaveToFile(imagePath);
  finally
    Bitmap.Free;
  end;
end;


end.
