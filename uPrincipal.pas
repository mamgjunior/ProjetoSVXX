unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, UValidateXMLXSD, UProgressThread,
  Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    pnlHeader: TPanel;
    lblCredor: TLabel;
    Label2: TLabel;
    pnlXSD: TPanel;
    Shape1: TShape;
    lblXSD: TLabel;
    pnlPesquisa: TPanel;
    shpPesquisa: TShape;
    edtXSD: TEdit;
    pnlValidar: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    pnlXML: TPanel;
    Shape2: TShape;
    lblXML: TLabel;
    Panel3: TPanel;
    Shape5: TShape;
    edtXML: TEdit;
    pnlLimpar: TPanel;
    Shape3: TShape;
    lblExcluir: TLabel;
    lblMenos: TLabel;
    ProgressBar1: TProgressBar;
    mmoInformacoes: TMemo;
    dlgDiretoriosXML: TOpenDialog;
    dlgDiretoriosXSD: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlXSDClick(Sender: TObject);
    procedure pnlXMLClick(Sender: TObject);
    procedure pnlLimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlValidarClick(Sender: TObject);
  private
    FValidateXMLXSD: TValidateXMLXSD;
    procedure Validar;
    procedure DoTerminate(PSender: TObject);
    procedure DoProgress(const PText: string; const PNumber: Cardinal);
    procedure DoMax(const PMax: Int64);
    procedure BuscarCaminhoXSD;
    procedure BuscarCaminhoXML;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.DoMax(const PMax: Int64);
begin
  ProgressBar1.Step := 1;
  ProgressBar1.Position := 0;
  ProgressBar1.Max := PMax;
  ProgressBar1.DoubleBuffered := True;
end;

procedure TfrmPrincipal.BuscarCaminhoXSD;
begin
  if dlgDiretoriosXSD.Execute then
    edtXSD.Text := dlgDiretoriosXSD.FileName;
end;

procedure TfrmPrincipal.BuscarCaminhoXML;
begin
  if dlgDiretoriosXML.Execute then
    edtXML.Text := dlgDiretoriosXML.FileName;
end;

procedure TfrmPrincipal.DoProgress(const PText: string; const PNumber: Cardinal);
begin
  ProgressBar1.StepIt;
//  lblProgresso.Caption := 'Arquivo ' + IntToStr(ProgressBar1.Position) + ' / ' + IntToStr(ProgressBar1.Max) + ': ' + FormatFloat('(###,###,###,###,##0 bytes) ',PNumber) + PText;
//  lblProgresso.Caption := FormatFloat('##0.00%',ProgressBar1.Position / ProgressBar1.Max * 100);
end;

procedure TfrmPrincipal.DoTerminate(PSender: TObject);
begin
  try
    if FValidateXMLXSD.Result.Count > 0 then
    begin
      mmoInformacoes.Lines.Add('OS SEGUINTES ERROS DE VALIDAÇÃO FORAM ENCONTRADOS: ' + #13#10);
      mmoInformacoes.Lines.Add(FValidateXMLXSD.Result.Text);
    end
    else
      mmoInformacoes.Lines.Add('ESTE ARQUIVO NÃO CONTÉM ERROS!'#13#10);
  finally
    FValidateXMLXSD.Result.Free;
    mmoInformacoes.Lines.Add('---------------------------------------');
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FValidateXMLXSD <> nil then
    FValidateXMLXSD := nil;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      Application.Terminate;
  end;
end;

procedure TfrmPrincipal.pnlLimparClick(Sender: TObject);
begin
  mmoInformacoes.Lines.Clear;
  edtXSD.Clear;
  edtXML.Clear;
  ProgressBar1.Position := 0;

  if FValidateXMLXSD <> nil then
    FValidateXMLXSD := nil;
end;

procedure TfrmPrincipal.pnlValidarClick(Sender: TObject);
begin
  Validar;
end;

procedure TfrmPrincipal.pnlXMLClick(Sender: TObject);
begin
  BuscarCaminhoXML;
end;

procedure TfrmPrincipal.pnlXSDClick(Sender: TObject);
begin
  BuscarCaminhoXSD;
end;

procedure TfrmPrincipal.Validar;
var
  loNomeArquivo: string;
begin
  loNomeArquivo := StringReplace(Trim(edtXML.Text), ExtractFilePath(Trim(edtXML.Text)), EmptyStr, [rfIgnoreCase, rfReplaceAll]);
  mmoInformacoes.Lines.Clear;
  mmoInformacoes.Lines.Add('VALIDANDO O ARQUIVO "' + Trim(loNomeArquivo) + '"'#13#10);

  FValidateXMLXSD := TValidateXMLXSD.Create;

  with FValidateXMLXSD do
  begin
    XMLFile := Trim(edtXML.Text);
    XSDFile := Trim(edtXSD.Text);
    IgnoreDuplicates := False;
    OnMax := DoMax;
    OnProgress := DoProgress;
    OnTerminate := DoTerminate;
    Resume;
  end;
end;

end.

