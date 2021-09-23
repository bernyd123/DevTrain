table 50100 MyCustomer
{
    Caption = 'MyCustomer';
    DataClassification = ToBeClassified;
    LookupPageId = "My Customer List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(4; Balance; Decimal)
        {
            Caption = 'Balance';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum("My Customer Ledger Entry".Amount where("Customer No." = field("No."),
                                                                      "Posting Date" = field("Posting Date Filter"),
                                                                      "Document Type" = field("Document Type Filter")));
        }
        field(5; "Document Type Filter"; Enum "Document Type")
        {
            Caption = 'Document Type Filter';
            FieldClass = FlowFilter;
        }
        field(6; "Posting Date Filter"; Date)
        {
            Caption = 'Posting Date Filter';
            FieldClass = FlowFilter;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}
