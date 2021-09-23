page 50100 "My Customer List"
{

    ApplicationArea = All;
    Caption = 'My Customer List';
    PageType = List;
    SourceTable = MyCustomer;
    UsageCategory = Lists;
    CardPageId = "My Customer Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'This is the number of the customer.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'THe name of the actual customer.';
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

    actions
    {
        area(Navigation)
        {
            action("Ledger Entry")
            {
                Caption = 'Ledger Entry';
                RunObject = page "My Cust Ledger Entry List";
                RunPageLink = "Customer No." = field("No.");
            }
        }
    }

}
