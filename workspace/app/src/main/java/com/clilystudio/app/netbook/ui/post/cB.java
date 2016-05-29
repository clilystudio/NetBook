package com.clilystudio.app.netbook.ui.post;

import android.view.View;

import com.clilystudio.app.netbook.ui.BookInfoActivity;

final class cB
        implements View.OnClickListener {
    cB(ReviewActivity paramReviewActivity) {
    }

    public final void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
            case 2131493348:
        }
        do
            return;
        while ((ReviewActivity.h(this.a) == null) || (ReviewActivity.h(this.a).getBook() == null));
        this.a.startActivity(BookInfoActivity.a(this.a, ReviewActivity.h(this.a).getBook().get_id()));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cB
 * JD-Core Version:    0.6.2
 */