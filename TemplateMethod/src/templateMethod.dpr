program templateMethod;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DataMiner in 'DataMiner\DataMiner.pas',
  DocDataMiner in 'DataMiner\DocDataMiner.pas',
  CSVDataMiner in 'DataMiner\CSVDataMiner.pas',
  PDFDataMiner in 'DataMiner\PDFDataMiner.pas';

begin
  ReportMemoryLeaksOnShutdown:= true;
  try
    var PDF:= PDFDataMine.Create;
    var CSV:= CSVDataMine.Create;
    var DOC:= DocDataMine.Create;
    try
      PDF.mine('PDF');
      CSV.mine('CSV');
      DOC.mine('DOC');
      readln;
    finally
      PDF.Free;
      CSV.Free;
      DOC.Free;
    end;
  except
    on E: Exception do  Writeln(E.ClassName, ': ', E.Message);
  end;
end.
