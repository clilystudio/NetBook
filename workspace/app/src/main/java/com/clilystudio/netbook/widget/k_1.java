package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

final class k
        implements DialogInterface.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ Context b;

    k(j j2, String string, Context context) {
        this.a = string;
        this.b = context;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        if (!TextUtils.isEmpty(this.a)) {
            b.a(this.b, "visit_17k_webpage");
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(this.a));
            this.b.startActivity(intent);
        }
    }
}
