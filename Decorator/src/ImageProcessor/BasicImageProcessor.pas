unit BasicImageProcessor;

interface

uses ImageProcessor, System.SysUtils, Utils;

type
  TBasicImageProcessor = class(TInterfacedObject, IImageProcessor)
    public
       function process(imagePath: string ) : string;
  end;

implementation

function TBasicImageProcessor.process(imagePath: string) : string;
begin
  /// Do Somethig, process, valid if is a image ....
  var newImagePath:= GetCurrentDir() + '\file.bmp';
  FileImage.file_put_contents(newImagePath,'');
  result:= newImagePath;
end;

end.
