package com.clilystudio.netbook.widget;

import android.content.DialogInterface;

final class z
        implements DialogInterface.OnClickListener {
    private /* synthetic */ GameDownloadButton a;

    z(GameDownloadButton gameDownloadButton) {
        this.a = gameDownloadButton;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        this.a.f();
    }
}
