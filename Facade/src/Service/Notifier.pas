unit Notifier;

interface

type
  TNotifier = class
    public procedure sendConfirmation(const email : string);
  end;


implementation

procedure TNotifier.sendConfirmation(const email: string);
begin
  // Code to send Notification here.  Observer pattern???
end;

end.
