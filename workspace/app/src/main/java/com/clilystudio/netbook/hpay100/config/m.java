
package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import android.support.v7.app.f;
import android.text.TextUtils;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

final class m implements Runnable {

    m(Context Context1)
    {
        a = Context1;
    }

    private Context a;     // final access specifier removed

    public final void run()
    {
        try
        {
            long long3 = System.currentTimeMillis();
            String String5;
            Object Object6;
            Object Object8;

            l.a( a.getApplicationContext(), long3 );
            String5 = f.h( a.getApplicationContext() );
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "data:" ).append( String5 ).toString() );
            Object6 = new HashMap();
            ((HashMap) Object6).put( "p", f.a( String5, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a" ) );
            Object8 = com.clilystudio.netbook.hpay100.a.a.b( a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/init", (Map) Object6 );
            if( !android.text.TextUtils.isEmpty( (CharSequence) Object8 ) )
            {
                JSONObject JSONObject9 = new JSONObject( (String) Object8 );

                if( JSONObject9.optInt( "status", -1 ) == 0 )
                {
                    Object Object10 = JSONObject9.optString( "res", "" );

                    if( !android.text.TextUtils.isEmpty( (CharSequence) Object10 ) )
                    {
                        String String11 = f.b( (String) Object10, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a" );

                        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "resdes:" ).append( String11 ).toString() );
                        a.a( a.getApplicationContext(), String11 );
                    }
                }
            }
        }
        catch( NoSuchAlgorithmException NoSuchAlgorithmException2 )
        {
            NoSuchAlgorithmException2.printStackTrace();
            return;
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }
}
