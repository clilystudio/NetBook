package com.clilystudio.netbook.widget;

import android.view.View;

final class e
        implements View.OnClickListener {
    private /* synthetic */ AbsDownloadButton a;

    private e(AbsDownloadButton absDownloadButton) {
        this.a = absDownloadButton;
    }

    /* synthetic */ e(AbsDownloadButton absDownloadButton, byte by) {
        this(absDownloadButton);
    }

    @Override
    public final void onClick(View view) {
        AbsDownloadButton.a(this.a);
    }
}
