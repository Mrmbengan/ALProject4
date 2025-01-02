codeunit 50100 "NPX Posted Sales Order Logger"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnBeforePostSalesDoc, '', false, false)]
    local procedure "Sales-Post_OnBeforePostSalesDoc"(var Sender: Codeunit "Sales-Post"; var SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean; PreviewMode: Boolean; var HideProgressWindow: Boolean; var IsHandled: Boolean; var CalledBy: Integer)
    var
        LogEntry: Record "NPX Post Sales Order Log";
        SalesLine: Record "Sales Line";
        TotalExclVAT: Decimal;
        TotalInclVAT: Decimal;
        ItemCount: Integer;
    begin
        if SalesHeader."Document Type" <> SalesHeader."Document Type"::Order then
            exit;
        SalesHeader.CalcFields(Amount, "Amount Including VAT");
        SalesLine.SetRange("Document Type", SalesHeader."Document Type");
        SalesLine.SetRange("Document No.", SalesHeader."No.");
        SalesLine.SetRange(Type, SalesLine.Type::Item);
        SalesLine.CalcSums(Quantity);
        ItemCount := SalesLine.Quantity;
        /*SalesLine.SetRange("Document Type", SalesHeader."Document Type");
        SalesLine.SetRange("Document No.", SalesHeader."No.");
        /* if SalesLine.FindSet() then
             repeat
                 TotalExclVAT += SalesLine."Amount";
                 TotalInclVAT += SalesLine."Amount Including VAT";
                 ItemCount += 1;
             until SalesLine.Next = 0;*/
        LogEntry.Init();
        LogEntry."Document No." := SalesHeader."No.";
        LogEntry."Posting Date" := SalesHeader."Posting Date";
        LogEntry."Item Count" := ItemCount;
        LogEntry."Total Exl. VAT" := SalesHeader."Amount";
        LogEntry."Total Incl. VAT" := SalesHeader."Amount Including VAT";
        LogEntry.Insert();
    end;

}