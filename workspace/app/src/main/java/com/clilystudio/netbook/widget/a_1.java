package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.DialogInterface;

import com.clilystudio.netbook.util.e;

final class a implements DialogInterface.OnClickListener {
    private /* synthetic */ AbsDownloadButton a;

    a(AbsDownloadButton absDownloadButton) {
        this.a = absDownloadButton;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        e.a((Activity) this.a.getContext(), "\u5f00\u59cb\u4e0b\u8f7d...");
        this.a.b();
    }
}
