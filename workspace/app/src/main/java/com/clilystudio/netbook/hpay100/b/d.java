
package com.clilystudio.netbook.hpay100.b;

import java.util.HashMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.util.EntityUtils;

public final class d {

    private HashMap a;
    private HttpEntity b;

    public final String a(String String1)
    {
        String String3;

        try
        {
            String3 = EntityUtils.toString( b, String1 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return String3;
    }

    public final HashMap a()
    {
        return a;
    }

    public final void a(HttpEntity HttpEntity1)
    {
        b = HttpEntity1;
    }

    public final void a(Header[] Header_1darray1)
    {
        int int2;
        int int3;

        a = new HashMap();
        int2 = Header_1darray1.length;
        for( int3 = 0; int3 < int2; ++int3 )
        {
            Object Object4 = Header_1darray1[int3];

            a.put( ((Header) Object4).getName(), Object4 );
        }
    }
}
