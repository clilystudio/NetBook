package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.BookHelpResult;

final class ae extends e {

    private BookHelpActivity a;

    ae(BookHelpActivity BookHelpActivity1, byte byte2) {
        this(BookHelpActivity1);
    }

    private ae(BookHelpActivity BookHelpActivity1) {
        a = BookHelpActivity1;
    }

    private transient BookHelpResult a(String[] String_1darray1) {
        BookHelpResult BookHelpResult3;

        try {
            BookHelpResult3 = com.clilystudio.netbook.api.b.b().E(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return BookHelpResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (BookHelpResult) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((BookHelpResult) Object2).getHelp() != null) {
            a.f();
            BookHelpActivity.a(a, ((BookHelpResult) Object2).getHelp());
            BookHelpActivity.b(a, BookHelpActivity.a(a));
            if (BookHelpActivity.a(a).getCommentCount() >= 0)
                BookHelpActivity.b(a);
        } else
            a.h();
    }
}
