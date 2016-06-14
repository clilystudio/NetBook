package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.util.e;

final class cA implements View.OnClickListener {
    private /* synthetic */ Author a;
    private /* synthetic */ ReviewActivity b;

    cA(ReviewActivity reviewActivity, Author author) {
        this.b = reviewActivity;
        this.a = author;
    }

    @Override
    public final void onClick(View view) {
        this.b.startActivity(e.a((Context) this.b, (Author) this.a));
    }
}
