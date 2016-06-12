package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;

final class d implements View$OnClickListener {

    private TextView a;
    private AbsPostActivity b;
    d(AbsPostActivity AbsPostActivity1, TextView TextView2) {
        b = AbsPostActivity1;
        a = TextView2;
    }

    public final void onClick(View View1) {
        Account Account2 = am.a((Activity) b);

        if (Account2 != null && AbsPostActivity.b(b)) {
            String String3;

            b.e = null;
            String3 = a.getText().toString();
            AbsPostActivity.a(b, String3);
            b.a(Account2, String3);
        }
    }
}
