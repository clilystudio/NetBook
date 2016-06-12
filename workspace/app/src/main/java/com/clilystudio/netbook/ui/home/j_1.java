
package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.support.design.widget.am;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.RecommendInfo;
import com.clilystudio.netbook.model.ResultServer;

final class j extends e {

    j(HomeActivity HomeActivity1)
    {
        a = HomeActivity1;
    }

    private HomeActivity a;

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        int int2;

        if( "000000000000000".equals( am.t( (Context) a ) ) )
            int2 = 1;
        else
            int2 = 0;
        if( int2 != 0 )
            return null;
        else
        {
            RecommendInfo RecommendInfo3 = RecommendInfo.getInfoFromJson( HomeActivity.g( a ) );
            String String4 = "";
            String String5 = "";
            String String6;

            if( RecommendInfo3 != null )
            {
                String4 = RecommendInfo3.getRecommended();
                String5 = RecommendInfo3.getOp();
            }
            String6 = am.t( (Context) a );
            HomeActivity.h( a );
            return com.clilystudio.netbook.api.b.b().p( String6, String4, String5 );
        }
    }
}
