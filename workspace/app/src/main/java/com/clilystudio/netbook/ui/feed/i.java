package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.view.View;

final class i
        implements View.OnClickListener {
    private /* synthetic */ AlertDialog a;
    private /* synthetic */ int b;
    private /* synthetic */ int c;
    private /* synthetic */ FeedSettingActivity d;

    i(FeedSettingActivity feedSettingActivity, AlertDialog alertDialog, int n, int n2) {
        this.d = feedSettingActivity;
        this.a = alertDialog;
        this.b = n;
        this.c = n2;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        if (this.b != this.c) {
            FeedSettingActivity.b(this.d, this.b);
        }
    }
}
