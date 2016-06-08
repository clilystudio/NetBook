package com.clilystudio.netbook.widget;

import android.net.Uri;
import android.view.View;

import com.arcsoft.hpay100.a.a;

import java.io.File;

final class A
        implements View.OnClickListener {
    private A(GameDownloadButton paramGameDownloadButton) {
    }

    public final void onClick(View paramView) {
        if (a.a(this.a.getContext(), new File(Uri.parse(GameDownloadButton.a(this.a).getLocalFileUri()).getPath()))) {
            GameDownloadButton.b(this.a);
            return;
        }
        GameDownloadButton.a(this.a).setDownloadStatus(0);
        this.a.a(0);
    }
}

