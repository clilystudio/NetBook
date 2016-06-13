package com.clilystudio.netbook.widget;

import android.view.View;

final class B
        implements View.OnClickListener {
    private /* synthetic */ GameDownloadButton a;

    private B(GameDownloadButton gameDownloadButton) {
        this.a = gameDownloadButton;
    }

    /* synthetic */ B(GameDownloadButton gameDownloadButton, byte by) {
        this(gameDownloadButton);
    }

    @Override
    public final void onClick(View view) {
        this.a.g();
    }
}
