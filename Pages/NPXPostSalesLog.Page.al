page 50101 "NPX Post Sales Orders Log"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "NPX Post Sales Order Log";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document number of the sales order.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the posting date of the sales order.';
                }
                field("Item Count"; Rec."Item Count")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of items in the sales order.';
                }
                field("Total Exl. VAT"; Rec."Total Exl. VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total amount of the sales order excluding VAT.';
                }
                field("Total Incl. VAT"; Rec."Total Incl. VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total amount of the sales order including VAT.';
                }
            }
        }
    }
}
