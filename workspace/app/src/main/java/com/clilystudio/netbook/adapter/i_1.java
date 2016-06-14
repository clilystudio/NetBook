package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.util.e;

final class i implements View.OnClickListener {
    private /* synthetic */ BookReview a;

    i(h h2, BookReview bookReview) {
        this.a = bookReview;
    }

    @Override
    public final void onClick(View view) {
        view.getContext().startActivity(e.a(view.getContext(), this.a.author));
    }
}
