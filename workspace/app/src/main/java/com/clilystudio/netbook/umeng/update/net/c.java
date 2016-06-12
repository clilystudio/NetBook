
package com.clilystudio.netbook.umeng.update.net;

import android.content.Context;
import android.widget.Toast;

final class c implements Runnable {

    c(DownloadingService DownloadingService1, String String2)
    {
        a = DownloadingService1;
        b = String2;
    }

    private DownloadingService a;
    private String b;     // final access specifier removed

    public final void run()
    {
        Toast.makeText( DownloadingService.b( a ), (CharSequence) b, 0 ).show();
    }
}
