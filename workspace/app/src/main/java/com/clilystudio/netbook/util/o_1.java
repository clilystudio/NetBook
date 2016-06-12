
package com.clilystudio.netbook.util;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import java.util.List;

final class o extends c {

    public o(m m1, Activity Activity2, boolean boolean3, boolean boolean4)
    {
        super( Activity2, 2131034218, boolean3 );
        b = m1;
        a = boolean4;
    }

    private boolean a;
    private m b;

    private static transient List a(String[] String_1darray1)
    {
        List List4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            List4 = com.clilystudio.netbook.api.b.b().d( String_1darray1[0] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return List4;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        List List2 = (List) Object1;

        if( List2 == null )
            e.a( m.a( b ), "\u83B7\u53D6\u8D44\u6E90\u7AD9\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
        else
        {
            if( List2.size() > 1 )
                m.a( b, true );
            if( a )
                m.a( b, List2 );
            else
                m.b( b, List2 );
        }
    }
}
