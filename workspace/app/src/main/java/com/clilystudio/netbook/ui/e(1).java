package com.clilystudio.netbook.ui;

import android.content.DialogInterface;

import com.clilystudio.netbook.hpay100.a_Pack.a;

final class e
        implements DialogInterface.OnClickListener {
    e(AdWebViewActivity paramAdWebViewActivity, String paramString) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        com.clilystudio.netbook.util.e.a(this.b, "开始下载");
        String str = a.N(this.a);
        AdWebViewActivity.a(this.b, this.a, str);
    }
}

