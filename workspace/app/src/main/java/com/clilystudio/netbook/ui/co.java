
package com.clilystudio.netbook.ui;

import android.content.res.AssetManager;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import java.io.IOException;
import java.io.InputStream;

final class co implements r {

    co(WifiActivity WifiActivity1)
    {
        a = WifiActivity1;
    }

    private WifiActivity a;

    public final void a(h h1, l l2)
    {
        try
        {
            InputStream InputStream4 = a.getAssets().open( "index.html" );

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
