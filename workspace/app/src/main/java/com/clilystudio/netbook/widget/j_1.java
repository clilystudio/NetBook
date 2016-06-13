package com.clilystudio.netbook.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

public final class j {
    private final AlertDialog.Builder a;

    public j(Context context, String string) {
        this.a = new AlertDialog.Builder(context);
        this.a.setMessage("\u662f\u5426\u8df3\u8f6c\u81f3\u300c17k \u5c0f\u8bf4\u7f51\u300d\uff1f");
        this.a.setNegativeButton(17039360, null);
        this.a.setPositiveButton(17039370, (DialogInterface.OnClickListener) new k(this, string, context));
    }

    public final void a() {
        this.a.create().show();
    }
}
