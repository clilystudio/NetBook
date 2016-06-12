
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.ResultStatus;

final class h extends com.clilystudio.netbook.a.e {

    h(FavUGCListFragment FavUGCListFragment1, byte byte2)
    {
        this( FavUGCListFragment1 );
    }

    private FavUGCListFragment a;

    private h(FavUGCListFragment FavUGCListFragment1)
    {
        a = FavUGCListFragment1;
    }

    private static transient ResultStatus a(String[] String_1darray1)
    {
        ResultStatus ResultStatus4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            ResultStatus4 = com.clilystudio.netbook.api.b.b().E( String_1darray1[0], String_1darray1[1] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return ResultStatus4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (ResultStatus) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((ResultStatus) Object2).isOk() )
        {
            a.a();
            com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u5220\u9664\u6210\u529F" );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u5220\u9664\u5931\u8D25" );
    }
}
