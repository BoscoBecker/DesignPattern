unit DataMiner;

interface

uses system.SysUtils;

type
  DataMine = class abstract
    public
      procedure mine(path: string);
    protected
      function openFile(path:string): string; virtual; abstract;
      function extractData(fileContent:string ): string; virtual; abstract;
      function parseData(path:string): string; virtual; abstract;
      function analyzeData(data: string): string;
      function sendReport(analysisResult: string): string;
  end;

implementation

procedure DataMine.mine(path: string);
begin
  var fileContent:= openFile(path);
  var rawData:= extractData(fileContent);
  var data:= parseData(rawData);
  var analysisResult:= analyzeData(data);
  sendReport(analysisResult);
end;

function DataMine.analyzeData(data: string): string;
begin
  result:= '{"message": "success"}' + data;
end;


function DataMine.sendReport(analysisResult: string): string;
begin
  writeln(Format('printing analysis : %s ',[analysisResult]));
end;

end.
