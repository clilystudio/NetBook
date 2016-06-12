package com.clilystudio.netbook.ui;

import android.webkit.DownloadListener;

final class a implements DownloadListener {

    private AdWebViewActivity a;

    a(AdWebViewActivity AdWebViewActivity1) {
        a = AdWebViewActivity1;
    }

    public final void onDownloadStart(String String1, String String2, String String3, String String4, long long5) {
        if (AdWebViewActivity.a(a) != null)
            AdWebViewActivity.a(a, String1);
        else
            AdWebViewActivity.b(a, String1);
    }
}
