package com.clilystudio.netbook.ui;

import android.webkit.DownloadListener;

final class a
        implements DownloadListener {
    private /* synthetic */ AdWebViewActivity a;

    a(AdWebViewActivity adWebViewActivity) {
        this.a = adWebViewActivity;
    }

    @Override
    public final void onDownloadStart(String string, String string2, String string3, String string4, long l) {
        if (AdWebViewActivity.a(this.a) != null) {
            AdWebViewActivity.a(this.a, string);
            return;
        }
        AdWebViewActivity.b(this.a, string);
    }
}
