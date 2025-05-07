unit DomPDFAdapter;

interface

uses  PDFAdapter, Vcl.Graphics;

type
  TDomPDFAdapter = class(TInterfacedObject,IPDFAdapter)
    public procedure generate(const filename, content: string);
  end;

type
  DomPDF = class
    private
      procedure loadHtml(const path: string);
      procedure setPaper(const size, orientation: String);
      procedure write(const content: string);
      procedure render();
  end;



implementation

Uses System.SysUtils, System.DateUtils;

procedure DomPDF.loadHtml(const path: String);
begin
  writeLn(Format('Loading content %s ...',[path]));
end;

procedure DomPDF.render;
begin
  writeLn('Loading was created.');
end;

procedure DomPDF.setPaper(const size, orientation: String);
begin
   writeLn(Format('Setpaper, size: %s orientation: %s ',[size, orientation]));
end;

procedure DomPDF.write(const content: string);
begin
  writeLn(Format('write content %s ...',[content]));
end;

procedure TDomPDFAdapter.generate(const filename, content: string);
begin
   writeln(Format('Creating using Dom - PDF content %s',[content]));

   var domPDF := DomPDF.Create();
   try
      domPDF.loadHtml(filename);
      domPDF.setPaper('A4','landscape');
      domPDF.write(content);
      domPDF.render();
   finally
     domPDF.Free;
   end;

end;


end.
