page 50106 "CSD Seminar Comment Sheet"
//
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                    ApplicationArea = All;
                }
                field(Code;Code)
                {
                    Visible=false;
                    ApplicationArea = All;
                }
                field(Comment;Comment)
                {    
                    ApplicationArea = All;
                }
            }
        }
    }
}
