package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class aW extends com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> {
    private /* synthetic */ BookTagListActivity a;

    private aW(BookTagListActivity bookTagListActivity) {
        this.a = bookTagListActivity;
    }

    /* synthetic */ aW(BookTagListActivity bookTagListActivity, byte by) {
        this(bookTagListActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<BookSummary> a() {
        BookTagRoot bookTagRoot = b.b().c(BookTagListActivity.b(this.a), BookTagListActivity.a(this.a).size(), 50);
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
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        BookTagListActivity.c(this.a).setVisibility(8);
        if (list != null) {
            this.a.f();
            int n = list.size();
            if (n > 0) {
                BookTagListActivity.a(this.a).addAll(list);
                BookTagListActivity.d(this.a).a(BookTagListActivity.a(this.a));
                if (n >= 50) {
                    BookTagListActivity.e(this.a).setOnLastItemListener(BookTagListActivity.f(this.a));
                    return;
                }
            }
            BookTagListActivity.e(this.a).setOnLastItemListener(null);
            return;
        }
        e.a((Activity) this.a, (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
