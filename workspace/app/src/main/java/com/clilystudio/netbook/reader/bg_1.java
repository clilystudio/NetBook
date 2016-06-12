
package com.clilystudio.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

final class bg extends BroadcastReceiver {

    bg(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        if( "com.clilystudio.netbook.dlReceiver".equals( Intent2.getAction() ) )
        {
            String String3 = Intent2.getStringExtra( "bookId" );

            if( ReaderActivity.M( a ).equals( String3 ) )
            {
                ReaderActivity.g( a, true );
                ReaderActivity.l( a, Intent2.getIntExtra( "SerDlCurrentCount", 0 ) );
                ReaderActivity.k( a, Intent2.getIntExtra( "SerDlChapterCount", 0 ) );
                ReaderActivity.a( a, Intent2.getStringExtra( "SerDlLink" ) );
                ReaderActivity.m( a, Intent2.getIntExtra( "SerDlStopFlag", 0 ) );
                ReaderActivity.aj( a ).sendMessage( ReaderActivity.aj( a ).obtainMessage() );
            }
        }
    }
}
