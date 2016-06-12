package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.model.BookRankDetailRoot;

import java.io.IOException;

final class aL extends com.clilystudio.netbook.a.e {

    private BookRankDetailActivity a;

    aL(BookRankDetailActivity BookRankDetailActivity1, byte byte2) {
        this(BookRankDetailActivity1);
    }

    private aL(BookRankDetailActivity BookRankDetailActivity1) {
        a = BookRankDetailActivity1;
    }

    private transient BookRankDetailRoot a(String[] String_1darray1) {
        BookRankDetailRoot BookRankDetailRoot3;

        try {
            BookRankDetailRoot3 = com.clilystudio.netbook.api.b.b().z(String_1darray1[0]);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return BookRankDetailRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (BookRankDetailRoot) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((BookRankDetailRoot) Object2).getRanking() != null) {
            a.e(1);
            a.a.a(((BookRankDetailRoot) Object2).getRanking().getBooks());
        } else {
            a.e(2);
            com.clilystudio.netbook.util.e.a((Activity) a, 2131034408);
        }
    }
}
