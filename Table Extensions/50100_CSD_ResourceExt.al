tableextension 50100 Resource_Extension extends Resource
/* 
CSD1.0 - 2018-11-29 - Extension of the Resource table with 3 new fields and
the change of the option string of type from Person and Machine to Instructor and Room
NOTICE THE NEW WAY OF DOING COMMENTS
*/

/* this is a comment*/
{
    fields
    {
        modify(Type)
        // This is how you modify an existing field in a table - in this case the TYPE-field
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity Per Day';
        }
    }

    var
        //Delete unused variables 
        myInt: Integer;
}