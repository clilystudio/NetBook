package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.util.e;

final class a implements DialogInterface$OnClickListener {

    private AbsDownloadButton a;

    a(AbsDownloadButton AbsDownloadButton1) {
        a = AbsDownloadButton1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        e.a((Activity) a.getContext(), "\u5F00\u59CB\u4E0B\u8F7D...");
        a.b();
    }
}
