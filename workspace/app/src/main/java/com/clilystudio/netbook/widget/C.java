package com.clilystudio.netbook.widget;

import android.view.View;

final class C
        implements View.OnClickListener {
    private /* synthetic */ GameDownloadButton a;

    private C(GameDownloadButton gameDownloadButton) {
        this.a = gameDownloadButton;
    }

    /* synthetic */ C(GameDownloadButton gameDownloadButton, byte by) {
        this(gameDownloadButton);
    }

    @Override
    public final void onClick(View view) {
        this.a.e();
    }
}
