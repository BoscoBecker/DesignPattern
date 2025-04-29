unit WaterMarkImageProcessor;

interface

uses ImageProcessor, System.SysUtils, Utils;

type
  TWaterMarkImageProcessor = class(TInterfacedObject, IImageProcessor)
  private
    image: IImageProcessor;
  public
    constructor Create(imageProcess: IImageProcessor);
    function process(imagePath: string): string;
  end;

implementation

constructor TWaterMarkImageProcessor.Create(imageProcess: IImageProcessor);
begin
  image:= imageProcess
end;

function TWaterMarkImageProcessor.process(imagePath: string ):string;
begin
  writeln('Add Water Mark ...');
  var ProcessedPath:= image.process(imagePath);
  Var NewImagePath:= GetCurrentDir() +'/watermarked_file.bmp';
  FileImage.file_put_contents(NewImagePath,'NewfIle');
  result:= NewImagePath;
end;

end.
