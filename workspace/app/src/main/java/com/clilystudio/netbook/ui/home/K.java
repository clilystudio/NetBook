
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.BookReadRecord;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class K extends com.clilystudio.netbook.a.e {

    K(HomeShelfFragment HomeShelfFragment1, byte byte2)
    {
        this( HomeShelfFragment1 );
    }

    private List a;
    private HomeShelfFragment b;

    private K(HomeShelfFragment HomeShelfFragment1)
    {
        b = HomeShelfFragment1;
    }

    private transient List a()
    {
        Object Object1;
        List List5;

        a = BookReadRecord.getAll();
        try
        {
            Iterator Iterator3;

            Object1 = new ArrayList();
            Iterator3 = a.iterator();
            while( Iterator3.hasNext() )
                ((List) Object1).add( ((BookReadRecord) Iterator3.next()).getBookId() );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        try
        {
            com.clilystudio.netbook.api.b.a();
            List5 = com.clilystudio.netbook.api.b.b().a( (List) Object1 );
        }
        catch( Exception Exception6 )
        {
            Exception6.printStackTrace();
            return null;
        }
        return List5;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (List) Object1;

        super.onPostExecute( Object2 );
        if( b.getActivity() != null )
        {
            HomeShelfFragment.g( b );
            if( Object2 != null && !((List) Object2).isEmpty() )
                HomeShelfFragment.a( b, (List) Object2, a );
            else if( HomeShelfFragment.i( b ) == 0 )
            {
                com.clilystudio.netbook.util.e.a( (Activity) b.getActivity(), 2131034417 );
                return;
            }
        }
    }
}
