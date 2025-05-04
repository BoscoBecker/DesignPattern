program SingletonPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Logger in 'Logger.pas';
begin
  ReportMemoryLeaksOnShutdown:= True;
  try
    var Logger := TLogger.getInstance();  // Create the Instance
    var Logger2 := TLogger.getInstance(); // Same Instance
    var Logger3 := TLogger.Create();      // Another Instance
    try
      Logger.log('Teste de log 1...');
      Writeln(IntToHex(NativeInt(Pointer(Logger))));

      Logger2.log('Teste de log 2...');
      Writeln(IntToHex(NativeInt(Pointer(Logger2))));

      Logger3.log('Teste de log 3...');
      Writeln(IntToHex(NativeInt(Pointer(Logger3))));

      Readln;
    finally
      Logger.Destroy;
      Logger3.Destroy;
    end;
  except
    on E: Exception do Writeln(E.ClassName, ': ', E.Message);
  end;
end.
