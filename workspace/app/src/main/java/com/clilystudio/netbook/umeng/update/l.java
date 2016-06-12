package com.clilystudio.netbook.umeng.update;

import android.view.View;
import android.view.View$OnClickListener;

final class l implements View$OnClickListener {

    private UpdateDialogActivity a;
    private int b;     // final access specifier removed
    private int c;     // final access specifier removed
    l(UpdateDialogActivity UpdateDialogActivity1, int int2, int int3) {
        a = UpdateDialogActivity1;
        b = int2;
        c = int3;
    }

    public final void onClick(View View1) {
        if (b == View1.getId())
            a.a = 5;
        else if (c == View1.getId())
            a.a = 7;
        else if (a.b)
            a.a = 7;
        a.finish();
    }
}
