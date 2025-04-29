unit DocDataMiner;

interface

uses DataMiner;

type
  DocDataMine = class(DataMine)
    protected
      function openFile(path: string): string; override;
      function extractData(fileContent:string ): string; override;
      function parseData(path:string): string; override;
  end;

implementation

function DocDataMine.extractData(fileContent: string): string;
begin
  result:= fileContent+'... extracting {0..10 100..1000}';
end;

function DocDataMine.openFile(path: string): string;
begin
  result:= path+'... file content DOC';
end;

function DocDataMine.parseData(path: string): string;
begin
  result:= path+'... parsing {0..10 100..1000}';
end;


end.
