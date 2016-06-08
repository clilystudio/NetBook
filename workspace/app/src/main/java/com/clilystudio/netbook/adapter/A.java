package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.util.e;

final class A
        implements View.OnClickListener {
    A(z paramz, PostComment paramPostComment) {
    }

    public final void onClick(View paramView) {
        paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.getAuthor()));
    }
}

