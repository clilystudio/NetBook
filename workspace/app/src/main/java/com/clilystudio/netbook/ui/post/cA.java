package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.util.e;

final class cA implements View$OnClickListener {

    private Author a;
    private ReviewActivity b;
    cA(ReviewActivity ReviewActivity1, Author Author2) {
        b = ReviewActivity1;
        a = Author2;
    }

    public final void onClick(View View1) {
        b.startActivity(e.a((Context) b, a));
    }
}
