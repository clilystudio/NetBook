package com.clilystudio.netbook.widget;

import android.content.DialogInterface;

final class b
        implements DialogInterface.OnClickListener {
    private /* synthetic */ AbsDownloadButton a;

    b(AbsDownloadButton absDownloadButton) {
        this.a = absDownloadButton;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        this.a.b();
    }
}
