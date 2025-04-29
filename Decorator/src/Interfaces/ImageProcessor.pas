unit ImageProcessor;

interface

type
  IImageProcessor =  interface
    function process(imagePath: string) : string;
  end;

implementation

end.
