package com.clilystudio.netbook.reader.dl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.event.i;

public class BookDownloadService$MyNetworkMonitor extends BroadcastReceiver {
    public BookDownloadService$MyNetworkMonitor(BookDownloadService paramBookDownloadService) {
    }

    public void onReceive(Context paramContext, Intent paramIntent) {
        if ((BookDownloadService.a(this.a)) && (a.r(this.a) == 1)) {
            BookDownloadService.b(this.a).putExtra("SerDlStopFlag", 0);
            BookDownloadService.c(this.a);
            BookDownloadService.a(this.a, false);
            BookDownloadService.a(this.a, 2);
            i.a().c(new d(BookDownloadService.d(this.a), 2));
            BookDownloadService.e(this.a);
            BookDownloadService.b(this.a, false);
        }
    }
}

