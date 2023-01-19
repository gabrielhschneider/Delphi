unit UPaciente;

interface

type
  TPaciente = class
  private
    FCPF: String;
    FEspecialidade: String;
    FNome: String;
    procedure SetCPF(const Value: String);
    procedure SetEspecialidade(const Value: String);
    procedure SetNome(const Value: String);

    function GetCPF: String;
    function GetEspecialidade: String;
    function GetNome: String;

  public
    property CPF : String read FCPF write SetCPF;
    property Nome : String read FNome write SetNome;
    property Especialidade : String read FEspecialidade write SetEspecialidade;
  end;

implementation

{ TPaciente }

function TPaciente.GetCPF: String;
begin
  Result := FCPF;
end;

function TPaciente.GetEspecialidade: String;
begin
  Result := FEspecialidade;
end;

function TPaciente.GetNome: String;
begin
  Result := FNome;
end;

procedure TPaciente.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPaciente.SetEspecialidade(const Value: String);
begin
  FEspecialidade := Value;
end;

procedure TPaciente.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
