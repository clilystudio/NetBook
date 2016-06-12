package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;

final class k implements DialogInterface$OnClickListener {

    private String a;
    private Context b;
    k(j j1, String String2, Context Context3) {
        a = String2;
        b = Context3;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        if (!android.text.TextUtils.isEmpty((CharSequence) a)) {
            Intent Intent3;

            com.clilystudio.netbook.umeng.a.b.a(b, "visit_17k_webpage");
            Intent3 = new Intent("android.intent.action.VIEW");
            Intent3.setData(Uri.parse(a));
            b.startActivity(Intent3);
        }
    }
}
