package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.EditText;

import com.clilystudio.netbook.model.ReplyeeInfo;

final class e
        implements View.OnClickListener {
    private /* synthetic */ ReplyeeInfo a;
    private /* synthetic */ EditText b;
    private /* synthetic */ AbsPostActivity c;

    e(AbsPostActivity absPostActivity, ReplyeeInfo replyeeInfo, EditText editText) {
        this.c = absPostActivity;
        this.a = replyeeInfo;
        this.b = editText;
    }

    @Override
    public final void onClick(View view) {
        this.c.a(this.a, this.b.getText().toString());
    }
}
