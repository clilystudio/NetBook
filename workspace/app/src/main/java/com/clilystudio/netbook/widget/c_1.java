package com.clilystudio.netbook.widget;

import android.view.View;

final class c implements View.OnClickListener {
    private /* synthetic */ AbsDownloadButton a;

    private c(AbsDownloadButton absDownloadButton) {
        this.a = absDownloadButton;
    }

    /* synthetic */ c(AbsDownloadButton absDownloadButton, byte by) {
        this(absDownloadButton);
    }

    @Override
    public final void onClick(View view) {
        this.a.d();
    }
}
