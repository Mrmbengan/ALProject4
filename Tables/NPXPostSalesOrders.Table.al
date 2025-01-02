table 50101 "NPX Post Sales Order Log"
{
    DataClassification = ToBeClassified;
    Caption = 'Post Sales Order Log';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Posting Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Item Count"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Total Exl. VAT"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Total Incl. VAT"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Document No.")
        {
            Clustered = true;
        }
    }
}

