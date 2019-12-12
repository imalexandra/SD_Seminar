page 50107 "CSD Seminar Comment List"
//
{
    Caption = 'Seminar Comment List';
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Editable=false;

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