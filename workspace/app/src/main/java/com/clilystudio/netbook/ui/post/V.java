package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import android.widget.TextView;

final class V implements View$OnClickListener {

    private EditText a;
    private TextView b;
    private int c;
    private Dialog d;
    private AddVoteItemActivity e;
    V(AddVoteItemActivity AddVoteItemActivity1, EditText EditText2, TextView TextView3, int int4, Dialog Dialog5) {
        e = AddVoteItemActivity1;
        a = EditText2;
        b = TextView3;
        c = int4;
        d = Dialog5;
    }

    public final void onClick(View View1) {
        Object Object2;

        AddVoteItemActivity.a(e, (View) a);
        Object2 = a.getText().toString();
        if (!com.clilystudio.netbook.hpay100.a.a.Q((String) Object2)) {
            if (AddVoteItemActivity.a(e, (String) Object2))
                com.clilystudio.netbook.util.e.a((Activity) e, "\u8BE5\u6295\u7968\u9879\u5DF2\u7ECF\u5B58\u5728");
            else {
                b.setText((CharSequence) Object2);
                AddVoteItemActivity.h(e)[c] = (String) Object2;
            }
        }
        d.dismiss();
    }
}
