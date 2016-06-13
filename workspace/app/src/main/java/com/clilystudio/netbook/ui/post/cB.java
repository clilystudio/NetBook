package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.ui.BookInfoActivity;

final class cB
        implements View.OnClickListener {
    private /* synthetic */ ReviewActivity a;

    cB(ReviewActivity reviewActivity) {
        this.a = reviewActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493348: {
                if (ReviewActivity.h(this.a) == null || ReviewActivity.h(this.a).getBook() == null) return;
                this.a.startActivity(BookInfoActivity.a(this.a, ReviewActivity.h(this.a).getBook().get_id()));
                return;
            }
        }
    }
}
