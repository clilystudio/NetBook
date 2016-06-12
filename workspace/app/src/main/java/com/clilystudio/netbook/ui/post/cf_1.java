package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class cf implements View$OnClickListener {

    OtherUserActivity a;     // final access specifier removed

    cf(OtherUserActivity OtherUserActivity1) {
        a = OtherUserActivity1;
    }

    public final void onClick(View View1) {
        if (OtherUserActivity.l(a) == null && OtherUserActivity.m(a) != 0) {
            cj cj3;
            String[] String_1darray4;

            if (OtherUserActivity.n(a) != null)
                OtherUserActivity.n(a).cancel(true);
            OtherUserActivity.a(a, new cj(a, (Runnable) new cg(this)));
            cj3 = OtherUserActivity.n(a);
            String_1darray4 = new String[1];
            String_1darray4[0] = OtherUserActivity.k(a);
            cj3.b(String_1darray4);
        } else
            OtherUserActivity.o(a);
    }
}
