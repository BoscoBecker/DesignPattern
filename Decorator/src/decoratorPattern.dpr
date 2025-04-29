program decoratorPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Utils in 'Utils\Utils.pas',
  ImageProcessor in 'Interfaces\ImageProcessor.pas',
  BasicImageProcessor in 'ImageProcessor\BasicImageProcessor.pas',
  WaterMarkImageProcessor in 'ImageProcessor\WaterMarkImageProcessor.pas';
begin
  try
    var imagePath:= GetCurrentDir() + '\file.bmp';
    var processor: IImageProcessor;

    processor:= TBasicImageProcessor.Create();
    processor:= TWaterMarkImageProcessor.Create(processor); /// decorate here
    processor.process(imagePath);
    Readln;
  except
    on E: Exception do   Writeln(E.ClassName, ': ', E.Message);
  end;
end.
