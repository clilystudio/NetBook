package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class c implements View$OnClickListener {

    private AbsDownloadButton a;

    c(AbsDownloadButton AbsDownloadButton1, byte byte2) {
        this(AbsDownloadButton1);
    }

    private c(AbsDownloadButton AbsDownloadButton1) {
        a = AbsDownloadButton1;
    }

    public final void onClick(View View1) {
        a.d();
    }
}
