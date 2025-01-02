pageextension 50101 "Sales Order Ext" extends "Sales Order"
{
    actions
    {
        addlast(Processing)
        {
            action(LogOrder)
            {
                ApplicationArea = All;
                Caption = 'Log Sales Order';
                trigger OnAction()
                var
                    Logger: Codeunit "NPX Posted Sales Order Logger";
                begin

                end;
            }
        }
    }
}

