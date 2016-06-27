package com.clilystudio.netbook.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

import com.xiaomi.mistatistic.sdk.MiStatInterface;

public final class j {
    private final AlertDialog.Builder a;

    public j(final Context context, final String string) {
        this.a = new AlertDialog.Builder(context);
        this.a.setMessage("是否跳转至「17k 小说网」？");
         this.a.setNegativeButton(android.R.string.cancel, null);
        this.a.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (!TextUtils.isEmpty(string)) {
                    MiStatInterface.recordCountEvent("visit_17k_webpage", null);
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(string));
                    context.startActivity(intent);
                }
            }
        });
    }

    public final void a() {
        this.a.create().show();
    }
}
