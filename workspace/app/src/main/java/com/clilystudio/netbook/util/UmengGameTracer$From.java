
package com.clilystudio.netbook.util;

public final class UmengGameTracer$From extends Enum {

    private UmengGameTracer$From(String String1, int int2, String String3)
    {
        super( String1, int2 );
        mPre = new StringBuilder( "new_game_ad_" ).append( String3 ).toString();
    }

    private static UmengGameTracer$From[] a;     // final access specifier removed
    private String mPre;
    public static final UmengGameTracer$From Splash = new UmengGameTracer$From( "Splash", 0, "splash" );
    public static final UmengGameTracer$From Bookshelf = new UmengGameTracer$From( "Bookshelf", 1, "bookshelf" );
    public static final UmengGameTracer$From Reader = new UmengGameTracer$From( "Reader", 2, "reader_menu" );
    public static final UmengGameTracer$From Notification = new UmengGameTracer$From( "Notification", 3, "notification" );
// Error: Internal #201: 
// The following method may not be correct.

    public static UmengGameTracer$From valueOf(String String1)
    {
    }

    public static UmengGameTracer$From[] values()
    {
        return (UmengGameTracer$From[]) a.clone();
    }

    public final String build()
    {
        return new StringBuilder().append( mPre ).append( "_" ).toString();
    }

    public final String getPre()
    {
        return mPre;
    }

    static 
    {
        UmengGameTracer$From[] From_1darray1 = new UmengGameTracer$From[4];

        From_1darray1[0] = Splash;
        From_1darray1[1] = Bookshelf;
        From_1darray1[2] = Reader;
        From_1darray1[3] = Notification;
        a = From_1darray1;
    }
}
