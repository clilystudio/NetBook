
package com.clilystudio.netbook.hpay100.config;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class d extends BroadcastReceiver {

    public final void onReceive(Context Context1, Intent Intent2)
    {
        if( Intent2.getAction().equals( "com.happy.pay100.smssend" ) )
        {
            if( getResultCode() == -1 )
            {
                com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "send sms ok:" );
                c.a( Context1 );
                c.a();
                if( c.b() != null )
                    c.b().a( 1 );
                c.a( null );
            }
            else
            {
                com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "send sms error:" );
                c.a( Context1 );
                c.a();
                if( c.b() != null )
                    c.b().a( 0 );
                c.a( null );
                return;
            }
        }
    }
}
