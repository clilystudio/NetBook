
package com.clilystudio.netbook.adapter;

import android.view.View;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.model.Tweet;
import java.util.List;

final class S extends e {

    S(G G1)
    {
        a = G1;
    }

    private G a;

    private static transient PostPublish a(String[] String_1darray1)
    {
        PostPublish PostPublish4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            PostPublish4 = com.clilystudio.netbook.api.b.b().k( String_1darray1[0], String_1darray1[1] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return PostPublish4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        PostPublish PostPublish2 = (PostPublish) Object1;

        if( PostPublish2 != null && PostPublish2.isOk() && G.b( a ) != null )
        {
            a.f().remove( G.c( a ) );
            a.notifyDataSetChanged();
            G.a( a, null );
            G.d( a, null );
        }
    }
}
