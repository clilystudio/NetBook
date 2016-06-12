
package com.clilystudio.netbook.ui;

import android.content.res.AssetManager;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import java.io.IOException;
import java.io.InputStream;

final class cn implements r {

    cn(WifiActivity WifiActivity1, String String2, String String3)
    {
        c = WifiActivity1;
        a = String2;
        b = String3;
    }

    private String a;
    private String b;
    private WifiActivity c;

    public final void a(h h1, l l2)
    {
        try
        {
            InputStream InputStream4 = c.getAssets().open( a );

            if( b != null )
                l2.b( b );
            l2.a( InputStream4, (long) InputStream4.available() );
        }
        catch( IOException IOException3 )
        {
            l2.a( "error!!" );
            IOException3.printStackTrace();
            return;
        }
    }
}
