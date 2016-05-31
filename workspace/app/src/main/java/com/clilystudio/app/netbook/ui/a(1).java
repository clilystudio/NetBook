package com.clilystudio.app.netbook.ui;

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
        AdWebViewActivity.b_initContentView(this.a, paramString1);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.a
 * JD-Core Version:    0.6.2
 */