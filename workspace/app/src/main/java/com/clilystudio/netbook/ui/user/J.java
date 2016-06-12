
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.widget.TextView;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.UserVipInfo;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

final class J extends e {

    J(PayAccountActivity PayAccountActivity1)
    {
        a = PayAccountActivity1;
    }

    private PayAccountActivity a;

    private transient UserVipInfo a(String[] String_1darray1)
    {
        UserVipInfo UserVipInfo3;

        try
        {
            UserVipInfo3 = com.clilystudio.netbook.api.b.b().O( String_1darray1[0] );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return UserVipInfo3;
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
            if( PayAccountActivity.d( a ) != null )
            {
                if( ((UserVipInfo) Object2).getDueInMs() > 0L )
                {
                    SimpleDateFormat SimpleDateFormat3 = new SimpleDateFormat( "yyyy-MM-dd", Locale.CHINA );

                    PayAccountActivity.d( a ).setText( (CharSequence) new StringBuilder( "\u622A\u6B62\u81F3" ).append( SimpleDateFormat3.format( ((UserVipInfo) Object2).getVipExpire() ) ).toString() );
                    PayAccountActivity.d( a ).setVisibility( 0 );
                }
                else
                    PayAccountActivity.d( a ).setVisibility( 8 );
            }
            com.clilystudio.netbook.hpay100.a.a.b( (Context) a, "remove_ad_duration", ((UserVipInfo) Object2).getDueInMs() );
            i.a().c( new s() );
        }
    }
}
