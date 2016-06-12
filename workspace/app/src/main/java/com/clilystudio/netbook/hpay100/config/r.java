
package com.clilystudio.netbook.hpay100.config;

import android.app.Activity;
import android.content.Context;
import android.support.v7.app.f;
import java.util.HashMap;
import java.util.Map;

final class r implements Runnable {

    r(Activity Activity1, String String2, String String3, k k4)
    {
        a = Activity1;
        b = String2;
        c = String3;
        d = k4;
    }

    private Activity a;     // final access specifier removed
    private String b;     // final access specifier removed
    private String c;     // final access specifier removed
    private k d;     // final access specifier removed

    public final void run()
    {
        l.s = "";
        try
        {
            String String2 = new StringBuilder( String.valueOf( f.h( a.getApplicationContext() ) ) ).append( l.a( b, c ) ).toString();
            Object Object3;

            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "data:" ).append( String2 ).toString() );
            Object3 = new HashMap();
            ((HashMap) Object3).put( "p", f.a( String2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a" ) );
            l.s = com.clilystudio.netbook.hpay100.a.a.b( a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/ver_confirm", (Map) Object3 );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            l.s = "";
        }
        a.runOnUiThread( (Runnable) new s( this, d ) );
    }
}
