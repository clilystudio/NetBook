package com.clilystudio.netbook.widget;

import android.net.Uri;
import android.view.View;

import java.io.File;

final class A implements View.OnClickListener {
    private /* synthetic */ GameDownloadButton a;

    private A(GameDownloadButton gameDownloadButton) {
        this.a = gameDownloadButton;
    }

    /* synthetic */ A(GameDownloadButton gameDownloadButton, byte by) {
        this(gameDownloadButton);
    }

    @Override
    public final void onClick(View view) {
        if (a.a(this.a.getContext(), new File(Uri.parse(GameDownloadButton.a(this.a).getLocalFileUri()).getPath()))) {
            GameDownloadButton.b(this.a);
            return;
        }
        GameDownloadButton.a(this.a).setDownloadStatus(0);
        this.a.a(0);
    }
}
