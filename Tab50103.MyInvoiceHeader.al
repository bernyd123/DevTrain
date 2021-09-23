table 50103 "MyInvoice Header"
{
    Caption = 'MyInvoice Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = MyCustomer;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Document No.")
        {
            Clustered = true;
        }
    }

}
