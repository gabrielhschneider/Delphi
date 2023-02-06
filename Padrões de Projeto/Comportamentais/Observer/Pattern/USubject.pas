unit USubject;

interface

uses
  UObserver;

type
  ISubject = interface
    //método para adicionar observers a litas
    procedure AdicionarObserver(aObserver: IObserver);

    //método para remover observers da lisya
    procedure RemoveObserver(aObserver: IObserver);

    //metodo responsavelm por notificar os observers registradores
    procedure Notificar;
  end;

implementation

end.
