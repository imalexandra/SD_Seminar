table 50104 "CSD Seminar Comment Line"
//
{
    Caption = 'Seminar Comment Line';
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";

    fields
    {
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar","Seminar Registration","Posted Seminar Registration";
            OptionCaption = 'Seminar,Seminar Registration,Posted Seminar Registration';
            DataClassification = AccountData;
        }
        field(20; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            DataClassification = AccountData;
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = if ("Table Name" = const(Seminar)) "CSD Seminar" else
            if ("Table Name" = const("Seminar Registration")) "CSD Seminar Reg. Header";
            DataClassification = AccountData;
        }
        field(40; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = AccountData;
        }

        field(50; Date; Date)
        {
            Caption = 'Date';
            DataClassification = AccountData;
        }
        field(60; Code; Code[10])
        {
            Caption = 'Code';
            DataClassification = AccountData;
        }
        field(70; Comment; Text[80])
        {
            Caption = 'Comment';
            DataClassification = AccountData;
        }
    }

    keys
    {
        key(PK; "Table Name", "Document Line No.", "No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
