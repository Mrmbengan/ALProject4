table 50103 "JQ Log"
{
    Caption = 'JQ Log';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;

        }

        field(2; "Description"; Text[80])
        {
            Caption = 'My Field';

        }

        field(3; "Date and Time"; DateTime)
        {
            Caption = 'Date and Time';
        }

    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}