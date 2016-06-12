package com.clilystudio.netbook.umeng.update.net;

import android.widget.Toast;

final class c implements Runnable {

    private DownloadingService a;
    private String b;     // final access specifier removed
    c(DownloadingService DownloadingService1, String String2) {
        a = DownloadingService1;
        b = String2;
    }

    public final void run() {
        Toast.makeText(DownloadingService.b(a), (CharSequence) b, 0).show();
    }
}
