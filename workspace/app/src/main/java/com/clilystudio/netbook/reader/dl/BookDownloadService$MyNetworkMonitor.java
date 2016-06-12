
package com.clilystudio.netbook.reader.dl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.event.i;

public class BookDownloadService$MyNetworkMonitor extends BroadcastReceiver {

    public BookDownloadService$MyNetworkMonitor(BookDownloadService BookDownloadService1)
    {
        a = BookDownloadService1;
    }

    private BookDownloadService a;

    public void onReceive(Context Context1, Intent Intent2)
    {
        if( BookDownloadService.a( a ) && com.clilystudio.netbook.hpay100.a.a.r( (Context) a ) == 1 )
        {
            BookDownloadService.b( a ).putExtra( "SerDlStopFlag", 0 );
            BookDownloadService.c( a );
            BookDownloadService.a( a, false );
            BookDownloadService.a( a, 2 );
            i.a().c( new com.clilystudio.netbook.event.d( BookDownloadService.d( a ), 2 ) );
            BookDownloadService.e( a );
            BookDownloadService.b( a, false );
        }
    }
}
