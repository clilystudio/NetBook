
package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.FollowResult;

final class ci extends e {

    ci(OtherUserActivity OtherUserActivity1, byte byte2)
    {
        this( OtherUserActivity1 );
    }

    private OtherUserActivity a;

    private ci(OtherUserActivity OtherUserActivity1)
    {
        a = OtherUserActivity1;
    }

    private static transient FollowResult a(String[] String_1darray1)
    {
        FollowResult FollowResult4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            FollowResult4 = com.clilystudio.netbook.api.b.b().n( String_1darray1[0], String_1darray1[1] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return FollowResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        FollowResult FollowResult2 = (FollowResult) Object1;

        if( FollowResult2 != null && FollowResult2.isOk() )
        {
            if( FollowResult2.isFollowed() )
                OtherUserActivity.a( a, 1 );
            else
                OtherUserActivity.a( a, 0 );
        }
        else
            OtherUserActivity.a( a, 0 );
        OtherUserActivity.z( a );
    }
}
