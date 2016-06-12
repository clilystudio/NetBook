package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.BookInfoActivity;

final class cB implements View$OnClickListener {

    private ReviewActivity a;

    cB(ReviewActivity ReviewActivity1) {
        a = ReviewActivity1;
    }

    public final void onClick(View View1) {
        switch (View1.getId()) {
            case 484:
                if (ReviewActivity.h(a) != null && ReviewActivity.h(a).getBook() != null) {
                    a.startActivity(BookInfoActivity.a((Context) a, ReviewActivity.h(a).getBook().get_id()));
                    return;
                }
                break;
            default:
                break;
        }
    }
}
