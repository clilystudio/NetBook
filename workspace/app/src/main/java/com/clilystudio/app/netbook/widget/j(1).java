package com.clilystudio.app.netbook.widget;

import android.app.AlertDialog;
import android.content.Context;

public final class j {
    private final AlertDialog.Builder a;

    public j(Context paramContext, String paramString) {
        this.a = new AlertDialog.Builder(paramContext);
        this.a.setMessage("是否跳转至「17k 小说网」？");
        this.a.setNegativeButton(17039360, null);
        this.a.setPositiveButton(17039370, new k(this, paramString, paramContext));
    }

    public final void a() {
        this.a.create().show();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.j
 * JD-Core Version:    0.6.2
 */