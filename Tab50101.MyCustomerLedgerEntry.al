table 50101 "My Customer Ledger Entry"
{
    Caption = 'My Customer Ledger Entry';
    DataClassification = ToBeClassified;
    DrillDownPageId = "My Cust Ledger Entry List";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(3; "Document Type"; Enum "Document Type")
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
        }
        field(4; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = "MyCustomer";
        }
        field(5; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(SecKey; "Customer No.", "Posting Date", "Document Type")
        {
            SumIndexFields = Amount;
        }
    }

}
