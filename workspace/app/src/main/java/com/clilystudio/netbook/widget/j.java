package com.clilystudio.netbook.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

public final class j {
    private final AlertDialog.Builder a;

    public j(Context context, String string) {
        this.a = new AlertDialog.Builder(context);
        this.a.setMessage("是否跳转至「17k 小说网」？");
        this.a.setNegativeButton(17039360, null);
        this.a.setPositiveButton(17039370, (DialogInterface.OnClickListener) new k(this, string, context));
    }

    public final void a() {
        this.a.create().show();
    }
}
