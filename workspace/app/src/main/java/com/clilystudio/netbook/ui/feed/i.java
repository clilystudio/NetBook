package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.view.View;
import android.view.View$OnClickListener;

final class i implements View$OnClickListener {

    private AlertDialog a;
    private int b;
    private int c;
    private FeedSettingActivity d;
    i(FeedSettingActivity FeedSettingActivity1, AlertDialog AlertDialog2, int int3, int int4) {
        d = FeedSettingActivity1;
        a = AlertDialog2;
        b = int3;
        c = int4;
    }

    public final void onClick(View View1) {
        a.dismiss();
        if (b != c)
            FeedSettingActivity.b(d, b);
    }
}
