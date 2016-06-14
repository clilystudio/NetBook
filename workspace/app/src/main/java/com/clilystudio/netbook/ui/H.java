package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.SearchResultRoot;
import com.clilystudio.netbook.util.e;

import java.util.List;

final class H extends com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> {
    private /* synthetic */ AuthorBooksActivity a;

    private H(AuthorBooksActivity authorBooksActivity) {
        this.a = authorBooksActivity;
    }

    /* synthetic */ H(AuthorBooksActivity authorBooksActivity, byte by) {
        this(authorBooksActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<BookSummary> a(String... arrstring) {
        SearchResultRoot searchResultRoot = b.b().o(arrstring[0]);
        if (searchResultRoot == null) return null;
        try {
            return searchResultRoot.getBooks();
        } catch (Exception var2_4) {
            var2_4.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        if (list == null) {
            this.a.h();
            e.a((Activity) this.a, (int) 2131034478);
            return;
        }
        if (list.size() > 0) {
            this.a.f();
        } else {
            this.a.g();
        }
        AuthorBooksActivity.b(this.a).a(list);
    }
}
