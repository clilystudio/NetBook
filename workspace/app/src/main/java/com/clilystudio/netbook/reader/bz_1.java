
package com.clilystudio.netbook.reader;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import java.util.List;

final class bz extends e {

    bz(ReaderMenuFragment ReaderMenuFragment1, byte byte2)
    {
        this( ReaderMenuFragment1 );
    }

    private ReaderMenuFragment a;

    private bz(ReaderMenuFragment ReaderMenuFragment1)
    {
        a = ReaderMenuFragment1;
    }

    private static transient List a()
    {
        List List3;

        try
        {
            com.clilystudio.netbook.api.b.a();
            List3 = com.clilystudio.netbook.api.b.b().i();
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return null;
        }
        return List3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (List) Object1;

        super.onPostExecute( Object2 );
        if( a.getActivity() != null && a.getView() != null )
        {
            if( Object2 == null || ((List) Object2).isEmpty() )
                ReaderMenuFragment.l( a );
            else
            {
                View View3 = a.getView().findViewById( 2131492933 );

                View3.setVisibility( 0 );
                View3.setOnClickListener( ReaderMenuFragment.m( a ) );
                View3.findViewById( 2131492916 ).setOnClickListener( ReaderMenuFragment.m( a ) );
                com.clilystudio.netbook.util.a.a().a( (List) Object2 );
                ReaderMenuFragment.n( a );
            }
        }
    }
}
