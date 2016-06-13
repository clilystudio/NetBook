package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

import com.clilystudio.netbook.widget.av;

final class ab
        implements av {
    private /* synthetic */ BookHelpActivity a;

    ab(BookHelpActivity bookHelpActivity) {
        this.a = bookHelpActivity;
    }

    @Override
    public final void a() {
        if (BookHelpActivity.h(this.a) == null || BookHelpActivity.h(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            BookHelpActivity.b(this.a);
        }
    }
}
