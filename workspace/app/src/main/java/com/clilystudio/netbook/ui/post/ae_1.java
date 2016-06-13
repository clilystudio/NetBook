package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookHelpResult;

final class ae
        extends e<String, Void, BookHelpResult> {
    private /* synthetic */ BookHelpActivity a;

    private ae(BookHelpActivity bookHelpActivity) {
        this.a = bookHelpActivity;
    }

    /* synthetic */ ae(BookHelpActivity bookHelpActivity, byte by) {
        this(bookHelpActivity);
    }

    private /* varargs */ BookHelpResult a(String... arrstring) {
        try {
            BookHelpResult bookHelpResult = b.b().E(arrstring[0]);
            return bookHelpResult;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        BookHelpResult bookHelpResult = (BookHelpResult) object;
        super.onPostExecute(bookHelpResult);
        if (bookHelpResult != null && bookHelpResult.getHelp() != null) {
            this.a.f();
            BookHelpActivity.a(this.a, bookHelpResult.getHelp());
            BookHelpActivity.b(this.a, BookHelpActivity.a(this.a));
            if (BookHelpActivity.a(this.a).getCommentCount() >= 0) {
                BookHelpActivity.b(this.a);
            }
            return;
        }
        this.a.h();
    }
}
