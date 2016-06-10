package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

import com.clilystudio.netbook.umeng.a_Pack.b;

final class k
        implements DialogInterface.OnClickListener {
    k(j paramj, String paramString, Context paramContext) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        if (!TextUtils.isEmpty(this.a)) {
            b.a(this.b, "visit_17k_webpage");
            Intent localIntent = new Intent("android.intent.action.VIEW");
            localIntent.setData(Uri.parse(this.a));
            this.b.startActivity(localIntent);
        }
    }
}

