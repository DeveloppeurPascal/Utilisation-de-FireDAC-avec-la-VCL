unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Data.DB, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    ListBox1: TListBox;
    FDMemTable1: TFDMemTable;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    FDMemTable1libelle: TStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    procedure ListBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses System.ioutils;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if length(Edit1.Text) > 0 then
  begin
    FDMemTable1.insert;
    FDMemTable1.fieldbyname('libelle').AsString := Edit1.Text;
    FDMemTable1.Post;
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  if length(Edit1.Text) > 0 then
  begin
    FDMemTable1.edit;
    FDMemTable1.fieldbyname('libelle').AsString := Edit1.Text;
    FDMemTable1.Post;
  end
  else
    BitBtn3Click(Sender);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if length(Edit1.Text) > 0 then
  begin
    FDMemTable1.delete;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDMemTable1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDMemTable1.ResourceOptions.PersistentFileName :=
    tpath.Combine(tpath.GetDocumentsPath, 'ListeFMXPAS.db');
  FDMemTable1.ResourceOptions.Persistent := true;
  FDMemTable1.Open;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  Edit1.Text := ListBox1.Items[ListBox1.ItemIndex];
end;

end.
