unit uCategorize.Model.IItem;

interface

uses System.Classes ,uCategorize.Model.TItemType;

  type
    IItem = interface
    ['{A4480BA3-227C-4CE7-B1A0-B023D645253A}']
        function Item( ItemName : String) : IItem;
        function State( StateItem : String) : IItem;
        function Description( Desc : String) : IItem;
        function PicturePath( Path : String) : IItem;
        function Container( ContainerNumber : Integer) :IItem;
        function TypeItem( SelectType : TItemType) : IItem;
    end;

implementation

end.
