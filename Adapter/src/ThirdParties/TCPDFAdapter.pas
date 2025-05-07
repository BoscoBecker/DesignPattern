unit TCPDFAdapter;

interface

uses  PDFAdapter, Vcl.Graphics;

type
  TTCPDFAdapter = class(TInterfacedObject,IPDFAdapter)
    public procedure generate(const filename, content: string);
  end;

type
  TCPDF = class
    private
      procedure loadHtml(const path: string);
      procedure setPaper(const size, orientation: String);
      procedure write(const content: string);
      procedure render();
  end;



implementation

Uses System.SysUtils, System.DateUtils;

procedure TCPDF.loadHtml(const path: String);
begin
  writeLn(Format('Loading content %s ...',[path]));
end;

procedure TCPDF.render;
begin
  writeLn('Loading was created.');
end;

procedure TCPDF.setPaper(const size, orientation: String);
begin
   writeLn(Format('Setpaper, size: %s orientation: %s ',[size, orientation]));
end;

procedure TCPDF.write(const content: string);
begin
  writeLn(Format('write content %s ...',[content]));
end;

procedure TTCPDFAdapter.generate(const filename, content: string);
begin
   writeln(Format('Creating using TCPDF -  PDF content %s',[content]));

   var TCPDF := TCPDF.Create();
   try
      TCPDF.loadHtml(filename);
      TCPDF.setPaper('A4','landscape');
      TCPDF.write(content);
      TCPDF.render();
   finally
     TCPDF.Free;
   end;

end;


end.
