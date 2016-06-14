package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.DialogInterface;

import com.clilystudio.netbook.util.A;
import com.clilystudio.netbook.util.e;

final class bl implements DialogInterface.OnClickListener {
    private /* synthetic */ MhdListActivity a;

    bl(MhdListActivity mhdListActivity) {
        this.a = mhdListActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        e.a((Activity) this.a, "\u5f00\u59cb\u4e0b\u8f7d...");
        new A(this.a).a();
        b.a(this.a, "mhd_download_click");
    }
}
