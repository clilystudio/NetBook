package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class ao implements Runnable {
    private /* synthetic */ an a;

    ao(an an2) {
        this.a = an2;
    }

    @Override
    public final void run() {
        if (!am.a(BookHelpListActivity.e(this.a.a))) {
            BookHelpListActivity.e(this.a.a).cancel(true);
        }
        BookHelpListActivity.a(this.a.a, new av(this.a.a, 0));
        av av2 = BookHelpListActivity.h(this.a.a);
        String[] arrstring = new String[]{BookHelpListActivity.f(this.a.a), BookHelpListActivity.g(this.a.a)};
        av2.b(arrstring);
    }
}
