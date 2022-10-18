/// <summary>
/// PageExtension PostedSalesInvoicePgUpdateExt (ID 50121) extends Record Posted Sales Inv. - Update.
/// Base App Page - Posted Sales Inv. - Update (1355, Card)
/// </summary>
pageextension 50121 PostedSalesInvoicePgUpdateExt extends "Posted Sales Inv. - Update"
{
    layout
    {
        addlast(General)
        {
            field("Your Reference"; Rec."Your Reference")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the Your Reference!';
            }
        }

    }

}
