
package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.IKanshuUrlResult;
import java.io.IOException;

final class g extends e {

    g(HomeActivity HomeActivity1, byte byte2)
    {
        this( HomeActivity1 );
    }

    private HomeActivity a;

    private g(HomeActivity HomeActivity1)
    {
        a = HomeActivity1;
    }

    private static transient IKanshuUrlResult a()
    {
        IKanshuUrlResult IKanshuUrlResult3;

        try
        {
            com.clilystudio.netbook.api.b.a();
            IKanshuUrlResult3 = com.clilystudio.netbook.api.b.b().t();
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            return null;
        }
        return IKanshuUrlResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (IKanshuUrlResult) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((IKanshuUrlResult) Object2).isOk() )
        {
            String String4;

            HomeActivity.a( a, ((IKanshuUrlResult) Object2).getLinks() );
            String4 = HomeActivity.a( a );
            if( String4 != null )
                HomeActivity.a( a, String4 );
        }
    }
}
