pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.0 - 2018-11-29 

{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    trigger OnOpenPage();
    begin
        rec.FILTERGROUP(3);
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::machine));
        rec.FILTERGROUP(0);
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}
