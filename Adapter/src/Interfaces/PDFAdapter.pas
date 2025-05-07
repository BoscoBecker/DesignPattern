unit PDFAdapter;

interface

type
  IPDFAdapter = interface
    ['{17278B7B-8636-4415-95A1-4481D6DD0586}']
    procedure generate(const filename, content: string);
  end;


implementation

end.
