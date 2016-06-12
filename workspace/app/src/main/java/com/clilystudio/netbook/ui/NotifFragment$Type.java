
package com.clilystudio.netbook.ui;

public final class NotifFragment$Type extends Enum {

    private NotifFragment$Type(String String1, int int2)
    {
        super( String1, int2 );
    }

    private static NotifFragment$Type[] a;     // final access specifier removed
    public static final NotifFragment$Type IMPORTANT = new NotifFragment$Type( "IMPORTANT", 0 );
    public static final NotifFragment$Type UNIMPORTANT = new NotifFragment$Type( "UNIMPORTANT", 1 );
// Error: Internal #201: 
// The following method may not be correct.

    public static NotifFragment$Type valueOf(String String1)
    {
    }

    public static NotifFragment$Type[] values()
    {
        return (NotifFragment$Type[]) a.clone();
    }

    static 
    {
        NotifFragment$Type[] Type_1darray1 = new NotifFragment$Type[2];

        Type_1darray1[0] = IMPORTANT;
        Type_1darray1[1] = UNIMPORTANT;
        a = Type_1darray1;
    }
}
