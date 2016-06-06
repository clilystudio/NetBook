package com.clilystudio.app.netbook.reader.dl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.event.d;
import com.clilystudio.app.netbook.event.i_OttoBus;

public class BookDownloadService$MyNetworkMonitor extends BroadcastReceiver {
    public BookDownloadService$MyNetworkMonitor(BookDownloadService paramBookDownloadService) {
    }

    public void onReceive(Context paramContext, Intent paramIntent) {
        if ((BookDownloadService.a(this.a)) && (a.r(this.a) == 1)) {
            BookDownloadService.b(this.a).putExtra("SerDlStopFlag", 0);
            BookDownloadService.c(this.a);
            BookDownloadService.a(this.a, false);
            BookDownloadService.a(this.a, 2);
            i_OttoBus.a().c(new d(BookDownloadService.d(this.a), 2));
            BookDownloadService.e(this.a);
            BookDownloadService.b(this.a, false);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.dl.BookDownloadService.MyNetworkMonitor
 * JD-Core Version:    0.6.2
 */