
package com.clilystudio.netbook.ui.home;

import android.content.Context;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.UserVipInfo;
import java.io.IOException;

final class h extends e {

    h(HomeActivity HomeActivity1)
    {
        a = HomeActivity1;
    }

    private HomeActivity a;

    private transient UserVipInfo a(String[] String_1darray1)
    {
        UserVipInfo UserVipInfo4;

        try
        {
            HomeActivity.f( a );
            UserVipInfo4 = com.clilystudio.netbook.api.b.b().O( String_1darray1[0] );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return UserVipInfo4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (UserVipInfo) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((UserVipInfo) Object2).isOk() )
        {
            com.clilystudio.netbook.hpay100.a.a.b( (Context) a, "remove_ad_duration", ((UserVipInfo) Object2).getDueInMs() );
            if( ((UserVipInfo) Object2).getDueInMs() > 0L )
                i.a().c( new s() );
        }
    }
}
