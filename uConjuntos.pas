unit uConjuntos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    conjunto1: TEdit;
    conjunto2: TEdit;
    Button1: TButton;
    edtResultado: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetStrNumber(const S: string): string;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

function tfrmprincipal.GetStrNumber(const S: string): string;
var
  vText : PChar;
begin
  vText := PChar(S);
  Result := '';

  while (vText^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(vText^, ['0'..'9']) then
    {$ELSE}
    if vText^ in ['0'..'9'] then
    {$ENDIF}
      Result := Result + vText^;

    Inc(vText);
  end;
end;
procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  I,N,tamanho_conjunto,stringbuscada: Integer;
  conjunto,conjunto_final:string;
begin
if length(conjunto1.Text) > length(conjunto2.Text) then
  begin
tamanho_conjunto:=length(conjunto1.Text);
  end
  else
  begin
 tamanho_conjunto:=length(conjunto2.Text);
  end;
for I := 1 to tamanho_conjunto do
begin
  conjunto_final:=conjunto_final+conjunto1.Text[I]+conjunto2.Text[I];
end;
edtresultado.Text:=conjunto_final;
showmessage('O tamanho dos dois conjuntos é: '+inttostr(length(conjunto1.Text+conjunto2.Text)));
showmessage('A quantidade de números é: '+inttostr(length(GetStrNumber(conjunto1.Text+conjunto2.Text))));
showmessage('A quantidade de caracteres que não são números é: '+inttostr(length(conjunto1.Text+conjunto2.Text)-length(GetStrNumber(conjunto1.Text+conjunto2.Text))));
end;

end.
