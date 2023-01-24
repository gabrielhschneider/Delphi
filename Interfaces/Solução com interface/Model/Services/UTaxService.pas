unit UTaxService;

interface

type
  ITaxService = interface
    ['{3D9E7B08-CFD0-460E-AA7B-3EB67FCC1D6C}']
    {CTRL + SHIFT + V}

    function tax(const aMount: Double): Double;
  end;

implementation

end.
