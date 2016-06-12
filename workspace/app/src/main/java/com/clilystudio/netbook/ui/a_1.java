
package com.clilystudio.netbook.ui;

import android.app.DownloadManager;
import android.webkit.DownloadListener;

final class a implements DownloadListener {

    a(AdWebViewActivity AdWebViewActivity1)
    {
        a = AdWebViewActivity1;
    }

    private AdWebViewActivity a;

    public final void onDownloadStart(String String1, String String2, String String3, String String4, long long5)
    {
        if( AdWebViewActivity.a( a ) != null )
            AdWebViewActivity.a( a, String1 );
        else
            AdWebViewActivity.b( a, String1 );
    }
}
