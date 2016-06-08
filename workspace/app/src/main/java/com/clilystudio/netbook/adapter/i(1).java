package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.util.e;

final class i
        implements View.OnClickListener {
    i(h paramh, BookReview paramBookReview) {
    }

    public final void onClick(View paramView) {
        paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.author));
    }
}

