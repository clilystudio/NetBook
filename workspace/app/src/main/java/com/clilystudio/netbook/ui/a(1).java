package com.clilystudio.netbook.ui;

import android.webkit.DownloadListener;

final class a
        implements DownloadListener {
    a(AdWebViewActivity paramAdWebViewActivity) {
    }

    public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong) {
        if (AdWebViewActivity.a(this.a) != null) {
            AdWebViewActivity.a(this.a, paramString1);
            return;
        }
        AdWebViewActivity.b(this.a, paramString1);
    }
}

