unit UMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, LCLType,
  Menus, ExtCtrls, ComCtrls, SynHighlighterSQL,
  SynEdit;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    SaveDialog1: TSaveDialog;
    SynEdit1: TSynEdit;
    SynSQLSyn1: TSynSQLSyn;
    TrackBar: TTrackBar;
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure TrackBarChange(Sender: TObject);
  private
    procedure CallFormAbout;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Begin
    SynEdit1.Lines.SaveToFile(SaveDialog1.Filename);
  end;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    SynEdit1.Lines.LoadFromFile(OpenDialog1.filename);
  end;
end;

procedure TForm1.TrackBarChange(Sender: TObject);
begin
  SynEdit1.BlockIndent:= TrackBar.Position;
end;

procedure TForm1.CallFormAbout;
var
   FormAbout: Tform;
   labelAbout: TLabel;
begin
  Try
    // Creating Form
    FormAbout:= TForm.Create(nil);
    FormAbout.Position:= poScreenCenter;

    // Creating Label
    labelAbout:= TLabel.Create(nil);
    labelAbout.Parent:= FormAbout;
    labelAbout.Font.Size:=25;
    labelAbout.Caption:='Developed by BoscoBecker - Lazarus';
    labelAbout.Visible:= True;
    labelAbout.Align:= alClient;
    labelAbout.WordWrap:=True;

  FormAbout.ShowModal;
  finally
    formAbout.Free;
    labelAbout.Free;
  end;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  CallFormAbout;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Begin
    SynEdit1.Lines.SaveToFile(SaveDialog1.Filename);
  end;
end;

end.

