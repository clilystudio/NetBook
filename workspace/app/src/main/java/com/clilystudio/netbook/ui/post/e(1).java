package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.EditText;

import com.clilystudio.netbook.model.ReplyeeInfo;

final class e
        implements View.OnClickListener {
    e(AbsPostActivity paramAbsPostActivity, ReplyeeInfo paramReplyeeInfo, EditText paramEditText) {
    }

    public final void onClick(View paramView) {
        this.c.a(this.a, this.b.getText().toString());
    }
}

