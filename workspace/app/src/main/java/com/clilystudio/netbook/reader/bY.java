
package com.clilystudio.netbook.reader;

import android.support.v4.app.FragmentActivity;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.adapter.B;
import com.clilystudio.netbook.api.ApiService;
import java.util.Collection;
import java.util.List;

final class bY extends e {

    bY(ReaderResourceFragment ReaderResourceFragment1, byte byte2)
    {
        this( ReaderResourceFragment1 );
    }

    private ReaderResourceFragment a;

    private bY(ReaderResourceFragment ReaderResourceFragment1)
    {
        a = ReaderResourceFragment1;
    }

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

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (List) Object1;

        super.onPostExecute( Object2 );
        if( a.getActivity() != null )
        {
            if( Object2 != null )
            {
                if( !((List) Object2).isEmpty() )
                {
                    ReaderResourceFragment.a( a, 1 );
                    ReaderResourceFragment.a( a, (List) Object2 );
                    ReaderResourceFragment.c( a ).a( (Collection) Object2 );
                }
                else
                {
                    ReaderResourceFragment.a( a, 3 );
                    return;
                }
            }
            else
            {
                ReaderResourceFragment.a( a, 2 );
                return;
            }
        }
    }
}
