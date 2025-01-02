tableextension 50102 "Customer Table Ext" extends Customer
{
    fields
    {
        field(50100; "MyCustomField"; Text[100])
        {
            Caption = 'My Custom Field';
            DataClassification = ToBeClassified;
        }
    }
}
