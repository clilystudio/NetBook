package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.DialogInterface;

import com.clilystudio.netbook.util.e;

final class a
        implements DialogInterface.OnClickListener {
    a(AbsDownloadButton paramAbsDownloadButton) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        e.a((Activity) this.a.getContext(), "开始下载...");
        this.a.b();
    }
}

