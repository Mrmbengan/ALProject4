pageextension 50102 "Customer List Ext" extends "Customer List"
{
    layout
    {
        // Add a new field to the Customer List
        addlast(Content)
        {
            field("Custom Field"; Rec."MyCustomField")
            {
                ApplicationArea = All;
                Caption = 'Custom Field';
                ToolTip = 'This is a custom field added to the customer list.';
            }
        }
    }

    actions
    {
        // Add a new action to the Customer List
        addlast(Processing)
        {
            action(MyCustomAction)
            {
                ApplicationArea = All;
                Caption = 'My Custom Action';
                ToolTip = 'Click here to perform a custom action.';
                trigger OnAction()
                begin
                    // Your custom logic goes here
                    Message('Custom action executed for %1', Rec.Name);
                end;
            }
        }
    }
}
