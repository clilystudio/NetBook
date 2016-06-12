
package com.clilystudio.netbook.model;

public final class InsideLinkType extends Enum {

    private InsideLinkType(String String1, int int2, String String3)
    {
        super( String1, int2 );
        name = String3;
    }

    private static InsideLinkType[] $VALUES;     // final access specifier removed
    private static InsideLinkType[] types;     // final access specifier removed
    private String label;
    private String name;
    private String value;
    public static final InsideLinkType GAME = new InsideLinkType( "GAME", 0, "game" );
    public static final InsideLinkType POST = new InsideLinkType( "POST", 1, "post" );
    public static final InsideLinkType BOOK = new InsideLinkType( "BOOK", 2, "book" );
    public static final InsideLinkType BOOKLIST = new InsideLinkType( "BOOKLIST", 3, "booklist" );
    public static final InsideLinkType LINK = new InsideLinkType( "LINK", 4, "link" );
    public static final InsideLinkType OTHER = new InsideLinkType( "OTHER", 5, "other" );
    public static final InsideLinkType POST_HELP = new InsideLinkType( "POST_HELP", 6, "post-help" );
    public static final InsideLinkType POST_REVIEW = new InsideLinkType( "POST_REVIEW", 7, "post-review" );

    public static InsideLinkType build(String String1)
    {
        InsideLinkType[] InsideLinkType_1darray2 = types;
        int int3 = InsideLinkType_1darray2.length;
        int int4 = 0;

        while( int4 < int3 )
        {
            InsideLinkType InsideLinkType5 = InsideLinkType_1darray2[int4];

            if( InsideLinkType5.getName().equals( String1 ) )
                return InsideLinkType5;
            else
                ++int4;
        }
        return null;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static InsideLinkType valueOf(String String1)
    {
    }

    public static InsideLinkType[] values()
    {
        return (InsideLinkType[]) $VALUES.clone();
    }

    public final String getLabel()
    {
        return label;
    }

    public final String getName()
    {
        return name;
    }

    public final String getValue()
    {
        return value;
    }

    public final void setLabel(String String1)
    {
        label = String1;
    }

    public final void setValue(String String1)
    {
        value = String1;
    }

    static 
    {
        InsideLinkType[] InsideLinkType_1darray1 = new InsideLinkType[8];
        InsideLinkType[] InsideLinkType_1darray2;

        InsideLinkType_1darray1[0] = GAME;
        InsideLinkType_1darray1[1] = POST;
        InsideLinkType_1darray1[2] = BOOK;
        InsideLinkType_1darray1[3] = BOOKLIST;
        InsideLinkType_1darray1[4] = LINK;
        InsideLinkType_1darray1[5] = OTHER;
        InsideLinkType_1darray1[6] = POST_HELP;
        InsideLinkType_1darray1[7] = POST_REVIEW;
        $VALUES = InsideLinkType_1darray1;
        InsideLinkType_1darray2 = new InsideLinkType[8];
        InsideLinkType_1darray2[0] = GAME;
        InsideLinkType_1darray2[1] = POST;
        InsideLinkType_1darray2[2] = BOOK;
        InsideLinkType_1darray2[3] = BOOKLIST;
        InsideLinkType_1darray2[4] = OTHER;
        InsideLinkType_1darray2[5] = LINK;
        InsideLinkType_1darray2[6] = POST_HELP;
        InsideLinkType_1darray2[7] = POST_REVIEW;
        types = InsideLinkType_1darray2;
    }
}
