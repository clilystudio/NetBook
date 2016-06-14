package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class aX extends e<String, Void, List<BookSummary>> {
    private /* synthetic */ BookTagListActivity a;

    private aX(BookTagListActivity bookTagListActivity) {
        this.a = bookTagListActivity;
    }

    /* synthetic */ aX(BookTagListActivity bookTagListActivity, byte by) {
        this(bookTagListActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<BookSummary> a() {
        BookTagRoot bookTagRoot = b.b().c(BookTagListActivity.b(this.a), 0, 50);
        if (bookTagRoot == null) return null;
        try {
            if (bookTagRoot.getBooks() == null) return null;
            return Arrays.asList(bookTagRoot.getBooks());
        } catch (IOException var1_3) {
            var1_3.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected

    final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        BookTagListActivity.c(this.a).setVisibility(View.GONE);
        if (list != null) {
            int n = list.size();
            if (n > 0) {
                this.a.f();
                BookTagListActivity.a(this.a).clear();
                BookTagListActivity.a(this.a).addAll(list);
                BookTagListActivity.d(this.a).a(BookTagListActivity.a(this.a));
                if (n < 50) {
                    BookTagListActivity.e(this.a).setOnLastItemListener(null);
                    return;
                }
                BookTagListActivity.e(this.a).setOnLastItemListener(BookTagListActivity.f(this.a));
                return;
            }
            this.a.g();
            return;
        }
        this.a.h();
    }
}
