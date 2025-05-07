unit SKIAPDF;

interface

uses  PDFAdapter, Skia, Skia.PDF, Skia.Vectors, Vcl.Graphics;

type
  TSKIAPDFAdapter = class(TInterfacedObject,IPDFAdapter)
    public procedure generate();
  end;


implementation

{ TDomPDFAdapter }

procedure TSKIAPDFAdapter.generate;
begin


end;

end.
