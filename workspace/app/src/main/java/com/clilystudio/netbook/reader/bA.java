
package com.clilystudio.netbook.reader;

import android.support.v4.app.FragmentActivity;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.widget.LoadingContainer;
import java.util.List;

final class bA extends e {

    bA(ReaderMenuFragment ReaderMenuFragment1, byte byte2)
    {
        this( ReaderMenuFragment1 );
    }

    private ReaderMenuFragment a;

    private bA(ReaderMenuFragment ReaderMenuFragment1)
    {
        a = ReaderMenuFragment1;
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
                ReaderMenuFragment.k( a ).a();
                ReaderMenuFragment.a( a, (List) Object2 );
            }
            else
            {
                ReaderMenuFragment.k( a ).b();
                return;
            }
        }
    }

    protected final void onPreExecute()
    {
        super.onPreExecute();
        ReaderMenuFragment.k( a ).c();
    }
}
