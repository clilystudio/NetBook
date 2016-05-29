package com.clilystudio.app.netbook.ui.post;

import android.view.View;

import com.clilystudio.app.netbook.model.Author;
import com.clilystudio.app.netbook.util.e;

final class cA
        implements View.OnClickListener {
    cA(ReviewActivity paramReviewActivity, Author paramAuthor) {
    }

    public final void onClick(View paramView) {
        this.b.startActivity(e.a(this.b, this.a));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cA
 * JD-Core Version:    0.6.2
 */