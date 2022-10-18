/// <summary>
/// Codeunit EditPostedDocumentsHandler (ID 50120).
/// </summary>
codeunit 50120 EditPostedDocumentsHandler
{
    [EventSubscriber(ObjectType::Page, Page::"Posted Sales Inv. - Update", 'OnAfterRecordChanged', '', false, false)]
    local procedure OnAfterRecordChanged(var SalesInvoiceHeader: Record "Sales Invoice Header"; xSalesInvoiceHeader: Record "Sales Invoice Header"; var IsChanged: Boolean);
    begin
        IsChanged := (SalesInvoiceHeader."Your Reference" <> xSalesInvoiceHeader."Your Reference");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Inv. Header - Edit", 'OnRunOnBeforeAssignValues', '', false, false)]
    local procedure OnBeforeSalesInvHeaderModify(var SalesInvoiceHeader: Record "Sales Invoice Header"; SalesInvoiceHeaderRec: Record "Sales Invoice Header");
    begin
        SalesInvoiceHeader."Your Reference" := SalesInvoiceHeaderRec."Your Reference";
    end;
}
