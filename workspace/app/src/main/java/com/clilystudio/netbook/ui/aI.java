package com.clilystudio.netbook.ui;

import android.content.Context;

import com.clilystudio.netbook.model.BookInfo;

import java.io.IOException;

final class aI extends com.clilystudio.netbook.a.e {

    private BookInfoActivity a;

    aI(BookInfoActivity BookInfoActivity1, byte byte2) {
        this(BookInfoActivity1);
    }

    private aI(BookInfoActivity BookInfoActivity1) {
        a = BookInfoActivity1;
    }

    private transient BookInfo a(String[] String_1darray1) {
        BookInfo BookInfo3;

        try {
            BookInfo3 = com.clilystudio.netbook.api.b.b().r(String_1darray1[0]);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return BookInfo3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (BookInfo) Object1;

        super.onPostExecute(Object2);
        if (!a.isFinishing()) {
            if (Object2 != null) {
                BookInfoActivity.b(a, 1);
                BookInfoActivity.a(a, (BookInfo) Object2);
                BookInfoActivity.d(a);
                BookInfoActivity.e(a);
                BookInfoActivity.f(a);
                com.clilystudio.netbook.hpay100.a.a.a((Context) a, (BookInfo) Object2);
            } else {
                BookInfoActivity.b(a, 2);
                return;
            }
        }
    }
}
