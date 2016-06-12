
package com.clilystudio.netbook.ui;

import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.a.k;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import java.util.Iterator;
import org.apache.http.NameValuePair;

final class cq implements r {

    cq(WifiActivity WifiActivity1, String[] String_1darray2)
    {
        a = String_1darray2;
    }

    private String[] a;

    public final void a(h h1, l l2)
    {
        Iterator Iterator3 = ((k) h1.b_()).b().iterator();

        while( Iterator3.hasNext() )
        {
            NameValuePair NameValuePair4 = (NameValuePair) Iterator3.next();

            if( !"filename".equals( NameValuePair4.getName() ) )
                continue;
            a[0] = NameValuePair4.getValue();
        }
        l2.a( "finish" );
    }
}
