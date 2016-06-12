
package com.clilystudio.netbook.hpay100.config;

import android.app.Activity;
import android.content.Context;
import java.util.HashMap;
import java.util.Map;

final class p implements Runnable {

    p(Activity Activity1, String String2, int int3, String String4, int int5, String String6, String String7, int int8, k k9)
    {
        a = Activity1;
        b = String2;
        c = int3;
        d = String4;
        e = int5;
        f = String6;
        g = String7;
        h = int8;
        i = k9;
    }

    private Activity a;     // final access specifier removed
    private String b;     // final access specifier removed
    private int c;     // final access specifier removed
    private String d;     // final access specifier removed
    private int e;     // final access specifier removed
    private String f;     // final access specifier removed
    private String g;     // final access specifier removed
    private int h;     // final access specifier removed
    private k i;     // final access specifier removed

    public final void run()
    {
        l.r = "";
        try
        {
            String String2 = new StringBuilder( String.valueOf( android.support.v7.app.f.h( a.getApplicationContext() ) ) ).append( l.a( b, c, d, e, f, g, h ) ).toString();
            Object Object3;

            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "params:" ).append( String2 ).toString() );
            Object3 = new HashMap();
            ((HashMap) Object3).put( "p", android.support.v7.app.f.a( String2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a" ) );
            l.r = com.clilystudio.netbook.hpay100.a.a.b( a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/create_order", (Map) Object3 );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            l.r = "";
        }
        a.runOnUiThread( (Runnable) new q( this, i ) );
    }
}
