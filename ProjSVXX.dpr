program ProjSVXX;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  UProgressThread in 'UProgressThread.pas',
  UValidateXMLXSD in 'UValidateXMLXSD.pas',
  MSXML2_TLB in 'C:\Users\MARCOSANTONIO\Documents\Embarcadero\Studio\18.0\Imports\MSXML2_TLB.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
