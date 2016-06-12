package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class W implements View$OnClickListener {

    int a;     // final access specifier removed
    S b;     // final access specifier removed
    private PopupWindow c;
    W(S S1, int int2, PopupWindow PopupWindow3) {
        b = S1;
        a = int2;
        c = PopupWindow3;
    }

    public final void onClick(View View1) {
        boolean[] boolean_1darray2 = S.a(b);
        int int3 = a;
        byte byte4;

        if (!com.clilystudio.netbook.ui.user.S.a(b)[a])
            byte4 = (byte) 1;
        else
            byte4 = (byte) 0;
        boolean_1darray2[int3] = byte4;
        b.notifyDataSetChanged();
        if (S.a(b)[a])
            new Handler().postDelayed((Runnable) new X(this), 50L);
        c.dismiss();
    }
}
