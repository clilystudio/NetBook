package com.clilystudio.netbook.ui;

import android.content.DialogInterface;

import com.clilystudio.netbook.util.A;
import com.clilystudio.netbook.util.e;

final class bl
        implements DialogInterface.OnClickListener {
    bl(MhdListActivity paramMhdListActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        e.a(this.a, "开始下载...");
        new A(this.a).a();
        b.a(this.a, "mhd_download_click");
    }
}

