codeunit 50103 JQ
{
    TableNo = "Job Queue Entry";

    trigger OnRun()
    var
        JQLog: Record "JQ Log";
    begin
        JQLog.Init();
        JQLog."Description" := StrSubstNo('Running from object %1', Rec."Object Caption to Run");
        JQLog."Date and Time" := CURRENTDATETIME();
        JQLog.Insert();
    end;

}