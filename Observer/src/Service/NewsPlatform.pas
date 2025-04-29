unit NewsPlatform;

interface

uses BitcoinPriceObserver, DateUtils, SysUtils;


type
  TNewsPlatform = class(TInterfacedObject, IBitcoinPriceObserver)
    procedure update(price : Currency);
  end;

implementation


procedure TNewsPlatform.Update(price: Currency);
begin
  {$IFDEF MSWINDOWS}
    Writeln('Notified to Windows: ' + Now.ToString + ' - ' + Price.ToString);
  {$ENDIF}

  {$IFDEF ANDROID}
    Writeln('Notified to Android: ' + Now.ToString + ' - ' + Price.ToString);
  {$ENDIF}

  {$IFDEF IOS}
    Writeln('Notified to iOS: ' + Now.ToString + ' - ' + Price.ToString);
  {$ENDIF}

  {$IFDEF MACOS}
    Writeln('Notified to macOS: ' + Now.ToString + ' - ' + Price.ToString);
  {$ENDIF}
end;

end.
