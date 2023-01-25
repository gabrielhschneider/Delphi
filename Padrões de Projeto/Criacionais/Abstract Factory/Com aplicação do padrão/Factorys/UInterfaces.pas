unit UInterfaces;

interface

type
  INoteBook = interface
    ['{32E50470-1244-4F9A-8D66-89051A02C306}']
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRam : String;
  end;

  IDesktop = interface
    ['{1B074EB0-E56A-41EF-94C7-9681E350657B}']
    function BuscarNomeProcessador: String;
    function BuscarTamanhoHD      : String;
  end;

  IFactoryMarca = interface
    ['{73A9B550-8776-4263-B817-1BD3D3A613C7}']
    function ConsultarNotebook: INoteBook;
    function ConsultarDesktop : IDesktop;
  end;


implementation

end.
