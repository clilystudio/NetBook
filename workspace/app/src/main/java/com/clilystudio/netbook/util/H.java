
package com.clilystudio.netbook.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class H {

    private H(Context Context1)
    {
        List List2 = a( Context1, "ts.tab", "UTF-8" );

        if( List2.size() % 2 != 0 )
            throw new RuntimeException( "The conversion table may be damaged or not exists" );
        else
        {
            int int3;

            b = (Map) new HashMap();
            for( int3 = 0; int3 < List2.size(); int3 += 2 )
                b.put( List2.get( int3 + 1 ), List2.get( int3 ) );
            return;
        }
    }

    private static H a;
    private Map b;

    public static H a(Context Context1)
    {
        if( a == null )
            a = new H( Context1 );
        return a;
    }

    private static List a(Context Context1, String String2, String String3)
    {
        Object Object4 = new ArrayList();
        BufferedReader BufferedReader5 = new BufferedReader( (Reader) new InputStreamReader( Context1.getResources().getAssets().open( String2 ), String3 ) );

        for( ;; )
        {
            int int6 = BufferedReader5.read();

            if( int6 != -1 )
                ((List) Object4).add( Character.valueOf( (char) int6 ) );
            else
            {
                BufferedReader5.close();
                return (List) Object4;
            }
        }
    }

    public final Character a(char char1)
    {
        if( b.get( Character.valueOf( char1 ) ) == null )
            return Character.valueOf( char1 );
        else
            return (Character) b.get( Character.valueOf( char1 ) );
    }
}
