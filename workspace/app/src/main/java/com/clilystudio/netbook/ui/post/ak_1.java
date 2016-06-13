package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class ak
        implements j {
    private /* synthetic */ BookHelpListActivity a;

    ak(BookHelpListActivity bookHelpListActivity) {
        this.a = bookHelpListActivity;
    }

    @Override
    public final void a() {
        if (BookHelpListActivity.e(this.a) == null || BookHelpListActivity.e(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            BookHelpListActivity.p(this.a).setVisibility(0);
            if (!am.a(BookHelpListActivity.h(this.a))) {
                BookHelpListActivity.h(this.a).cancel(true);
            }
            BookHelpListActivity.a(this.a, new au(this.a, 0));
            au au2 = BookHelpListActivity.e(this.a);
            String[] arrstring = new String[]{BookHelpListActivity.f(this.a), BookHelpListActivity.g(this.a)};
            au2.b(arrstring);
        }
    }
}
