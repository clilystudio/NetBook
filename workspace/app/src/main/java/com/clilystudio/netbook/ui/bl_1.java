package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.umeng.a.b;
import com.clilystudio.netbook.util.A;
import com.clilystudio.netbook.util.e;

final class bl implements DialogInterface$OnClickListener {

    private MhdListActivity a;

    bl(MhdListActivity MhdListActivity1) {
        a = MhdListActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        e.a((Activity) a, "\u5F00\u59CB\u4E0B\u8F7D...");
        new A((Activity) a).a();
        b.a((Context) a, "mhd_download_click");
    }
}
