package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class aF
        implements j {
    private /* synthetic */ BookReviewListFragment a;

    aF(BookReviewListFragment bookReviewListFragment) {
        this.a = bookReviewListFragment;
    }

    @Override
    public final void a() {
        if (BookReviewListFragment.b(this.a) == null || BookReviewListFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            this.a.c.setVisibility(0);
            if (!am.a((AsyncTask) BookReviewListFragment.j(this.a))) {
                BookReviewListFragment.j(this.a).cancel(true);
            }
            BookReviewListFragment.a(this.a, new aH(this.a, 0));
            aH aH2 = BookReviewListFragment.b(this.a);
            String[] arrstring = new String[]{this.a.a(), this.a.f};
            aH2.b(arrstring);
        }
    }
}
