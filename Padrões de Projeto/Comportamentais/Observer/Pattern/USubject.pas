unit USubject;

interface

uses
  UObserver;

type
  ISubject = interface
    //m�todo para adicionar observers a litas
    procedure AdicionarObserver(aObserver: IObserver);

    //m�todo para remover observers da lisya
    procedure RemoveObserver(aObserver: IObserver);

    //metodo responsavelm por notificar os observers registradores
    procedure Notificar;
  end;

implementation

end.
