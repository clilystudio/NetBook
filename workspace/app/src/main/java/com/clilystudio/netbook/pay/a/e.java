
package com.clilystudio.netbook.pay.a;

import android.text.TextUtils;

public final class e {

    public e(String String1)
    {
        if( !android.text.TextUtils.isEmpty( (CharSequence) String1 ) )
        {
            String[] String_1darray2 = String1.split( ";" );
            int int3 = String_1darray2.length;
            int int4;

            for( int4 = 0; int4 < int3; ++int4 )
            {
                String String5 = String_1darray2[int4];

                if( String5.startsWith( "resultStatus" ) )
                    a = a( String5, "resultStatus" );
                if( String5.startsWith( "result" ) )
                    b = a( String5, "result" );
                if( String5.startsWith( "memo" ) )
                    c = a( String5, "memo" );
            }
        }
    }

    private String a;
    private String b;
    private String c;

    private static String a(String String1, String String2)
    {
        String String3 = new StringBuilder().append( String2 ).append( "={" ).toString();

        return String1.substring( String1.indexOf( String3 ) + String3.length(), String1.lastIndexOf( "}" ) );
    }

    public final String a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final String toString()
    {
        return new StringBuilder( "resultStatus={" ).append( a ).append( "};memo={" ).append( c ).append( "};result={" ).append( b ).append( "}" ).toString();
    }
}
