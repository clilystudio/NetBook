package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.model.SearchResultRoot;

import java.util.Collection;
import java.util.List;

final class H extends com.clilystudio.netbook.a.e {

    private AuthorBooksActivity a;

    H(AuthorBooksActivity AuthorBooksActivity1, byte byte2) {
        this(AuthorBooksActivity1);
    }

    private H(AuthorBooksActivity AuthorBooksActivity1) {
        a = AuthorBooksActivity1;
    }

    private transient List a(String[] String_1darray1) {
        try {
            SearchResultRoot SearchResultRoot3 = com.clilystudio.netbook.api.b.b().o(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (List) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null) {
            if (((List) Object2).size() > 0)
                a.f();
            else
                a.g();
            AuthorBooksActivity.b(a).a((Collection) Object2);
        } else {
            a.h();
            com.clilystudio.netbook.util.e.a((Activity) a, 2131034478);
        }
    }
}
