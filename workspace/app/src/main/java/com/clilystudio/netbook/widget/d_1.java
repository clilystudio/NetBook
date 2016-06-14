package com.clilystudio.netbook.widget;

import android.view.View;

final class d implements View.OnClickListener {
    private /* synthetic */ AbsDownloadButton a;

    private d(AbsDownloadButton absDownloadButton) {
        this.a = absDownloadButton;
    }

    /* synthetic */ d(AbsDownloadButton absDownloadButton, byte by) {
        this(absDownloadButton);
    }

    @Override
    public final void onClick(View view) {
        this.a.c();
    }
}
