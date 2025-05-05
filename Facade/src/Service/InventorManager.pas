unit InventorManager;

interface

type
  TInventorManager = class
    public procedure updateStock(const productId: Int64; quantity: integer);
  end;

implementation

Uses System.SysUtils;

procedure TInventorManager.updateStock(const productId: Int64; quantity: integer);
begin
  Writeln(Format('Updating Stock .... productID: %s, quantity %s',[productId.ToString(),quantity.ToString]));
end;

end.
