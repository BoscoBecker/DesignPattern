unit Logger;

interface

uses
  System.SysUtils,System.IOUtils;

type
  TLogger = class
    strict private
      class var fLogger: TLogger;
      constructor Create; reintroduce;
    private
      const logFile = 'app.log';
    public
      procedure log(const message: string );
      class function getInstance : TLogger;
  end;

implementation

uses DateUtils;

constructor TLogger.Create;
begin
  inherited;
end;

class function TLogger.getInstance: TLogger;
begin
  if fLogger = nil then
    fLogger:= TLogger.Create;
  result:= fLogger;
end;

procedure TLogger.log(const message: string);
begin
  var logLine := '['+FormatDateTime('YYYYY-mm-dd hh:mm:ss', Now)+']';
  TFile.AppendAllText(logFile, Format('%s %s',[logLine,message])+sLineBreak, TEncoding.UTF8);
end;

end.
