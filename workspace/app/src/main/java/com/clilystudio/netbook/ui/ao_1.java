package com.clilystudio.netbook.ui;

import android.os.AsyncTask;

final class ao
        implements Runnable {
    private /* synthetic */ an a;

    ao(an an2) {
        this.a = an2;
    }

    @Override
    public final void run() {
        if (BookCategoryFragment.d(this.a.a) != null && BookCategoryFragment.d(this.a.a).getStatus() != AsyncTask.Status.FINISHED && !BookCategoryFragment.d(this.a.a).isCancelled()) {
            BookCategoryFragment.d(this.a.a).cancel(true);
        }
        BookCategoryFragment.a(this.a.a, new aq(this.a.a, false));
        BookCategoryFragment.d(this.a.a).b(new String[0]);
    }
}
