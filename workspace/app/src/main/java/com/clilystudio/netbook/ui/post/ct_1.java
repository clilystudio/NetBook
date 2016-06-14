package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.util.e;

final class ct implements View.OnClickListener {
    private /* synthetic */ Author a;
    private /* synthetic */ PostDetailActivity b;

    ct(PostDetailActivity postDetailActivity, Author author) {
        this.b = postDetailActivity;
        this.a = author;
    }

    @Override
    public final void onClick(View view) {
        this.b.startActivity(e.a((Context) this.b, this.a));
    }
}
