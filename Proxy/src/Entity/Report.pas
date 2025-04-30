unit Report;

interface

uses   System.SysUtils, System.Classes;


type
  ORM = class(TCustomAttribute)
  private
    FInfo: string;
  public
    constructor Create(const AInfo: string);
    property Info: string read FInfo;
  end;

/// [ORM\entity(repositoryClass: ReportRepository::class)]
type
  TReport = class(TCustomAttribute)
    [ORM('\id')]
    private
      Id : Integer;
      Data: String;
    public
      function getId(): Integer;
      function getData(): string;
      procedure SetData(const value:  string);
  end;

implementation

function TReport.getData: string;
begin
  result:= Data;
end;

function TReport.getId: Integer;
begin
  /// Simulate binding of class
  Randomize();
  id:= Random(99);
  result:= id;
end;

constructor ORM.Create(const AInfo: string);
begin
  FInfo := AInfo;
end;

procedure TReport.SetData(const value: string);
begin
  Data:= value;
end;

end.
