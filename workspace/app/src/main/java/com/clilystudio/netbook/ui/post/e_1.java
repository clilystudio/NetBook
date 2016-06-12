package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

import com.clilystudio.netbook.model.ReplyeeInfo;

final class e implements View$OnClickListener {

    private ReplyeeInfo a;
    private EditText b;
    private AbsPostActivity c;
    e(AbsPostActivity AbsPostActivity1, ReplyeeInfo ReplyeeInfo2, EditText EditText3) {
        c = AbsPostActivity1;
        a = ReplyeeInfo2;
        b = EditText3;
    }

    public final void onClick(View View1) {
        c.a(a, b.getText().toString());
    }
}
