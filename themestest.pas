program themestest;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  uMetaDarkStyle,
  Forms, umainform
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  uMetaDarkStyle.ApplyMetaDarkStyle;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

