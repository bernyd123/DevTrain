page 50102 "My Customer Card"
{

    Caption = 'My Customer Card';
    PageType = Card;
    SourceTable = MyCustomer;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Customer''s Primary Key.';
                    Caption = 'No.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field';
                    ApplicationArea = All;
                }
                field(Balance; Rec.Balance)
                {
                    ToolTip = 'Specifies the value of the Balance field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
