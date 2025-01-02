page 50103 "JQ Log"
{
    Caption = 'JQ Log';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "JQ Log";

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("Entry No."; Rec."Entry No.")
                {
                }
                field("Description"; Rec."Description")
                {
                }
                field("Date"; Rec."Date and Time")
                {
                }

            }
        }
    }

    var
        myInt: Integer;
}