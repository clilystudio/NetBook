package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class aP implements j {
    private /* synthetic */ BookTopicListFragment a;

    aP(BookTopicListFragment bookTopicListFragment) {
        this.a = bookTopicListFragment;
    }

    @Override
    public final void a() {
        if (BookTopicListFragment.b(this.a) == null || BookTopicListFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            this.a.c.setVisibility(0);
            if (!am.a((AsyncTask) BookTopicListFragment.i(this.a))) {
                BookTopicListFragment.i(this.a).cancel(true);
            }
            BookTopicListFragment.a(this.a, new aQ(this.a, 0));
            aQ aQ2 = BookTopicListFragment.b(this.a);
            String[] arrstring = new String[]{this.a.a(), this.a.f};
            aQ2.b(arrstring);
        }
    }
}
