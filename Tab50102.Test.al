table 50102 Test
{
    Caption = 'Test';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    
}
