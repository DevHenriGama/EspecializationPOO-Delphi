unit uItemStock.Controller.Interfaces;

interface

uses
  uItemStock.Model.Interfaces, FireDAC.Comp.Client;

  type
    IControllerItem = Interface;

    IControllerStock = interface
    ['{70F6AB0F-CB46-4D13-8D6E-8CBBB65CD156}']
      function StockItem : IControllerItem;
      function MyType : ITypeItens;
    end;

    IControllerItem = interface
      ['{787BB1A4-764C-4CC5-866A-842DCE88E4F4}']
      function ID( IDvalue : Integer) : IControllerItem;
      function Item( ItemName : String) : IControllerItem;
      function State(ItemState : String) : IControllerItem;
      function Description(Des_Item : String) : IControllerItem;
      function PicturePath( Path : String) : IControllerItem;
      function Container( NumContainer : Integer) : IControllerItem;
      function TypeItem(_TypeItem  : String) : IControllerItem;
      procedure Add;
      procedure Edit;
      procedure Remove;
      procedure Search(_Value ,SB_BY : String);
      function GetData : TFDQuery;
    end;


implementation

end.
