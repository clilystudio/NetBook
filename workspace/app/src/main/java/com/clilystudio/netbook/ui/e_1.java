package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.DialogInterface;

final class e implements DialogInterface.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ AdWebViewActivity b;

    e(AdWebViewActivity adWebViewActivity, String string) {
        this.b = adWebViewActivity;
        this.a = string;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        com.clilystudio.netbook.util.e.a((Activity) this.b, "\u5f00\u59cb\u4e0b\u8f7d");
        String string = a.N(this.a);
        AdWebViewActivity.a(this.b, this.a, string);
    }
}
