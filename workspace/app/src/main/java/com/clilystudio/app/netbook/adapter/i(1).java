package com.clilystudio.app.netbook.adapter;

import android.view.View;

import com.clilystudio.app.netbook.model.BookReview;
import com.clilystudio.app.netbook.util.e;

final class i
        implements View.OnClickListener {
    i(h paramh, BookReview paramBookReview) {
    }

    public final void onClick(View paramView) {
        paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.author));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.i
 * JD-Core Version:    0.6.2
 */