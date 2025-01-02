tableextension 50101 "Item Ext" extends Item
{
    fields
    {
        field(50101; "NPX Sales Orders"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Post Sales Order Log';
            TableRelation = "NPX Post Sales Order Log";
        }
    }
}
