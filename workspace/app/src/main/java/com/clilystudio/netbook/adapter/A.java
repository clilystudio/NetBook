package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.util.e;

final class A implements View.OnClickListener {
    private /* synthetic */ PostComment a;

    A(z z2, PostComment postComment) {
        this.a = postComment;
    }

    @Override
    public final void onClick(View view) {
        view.getContext().startActivity(e.a((Context) view.getContext(), (Author) this.a.getAuthor()));
    }
}
