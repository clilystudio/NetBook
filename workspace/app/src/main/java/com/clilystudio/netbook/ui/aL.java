package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class aL
        extends com.clilystudio.netbook.a.e<String, Void, BookRankDetailRoot> {
    private /* synthetic */ BookRankDetailActivity a;

    private aL(BookRankDetailActivity bookRankDetailActivity) {
        this.a = bookRankDetailActivity;
    }

    /* synthetic */ aL(BookRankDetailActivity bookRankDetailActivity, byte by) {
        this(bookRankDetailActivity);
    }

    private /* varargs */ BookRankDetailRoot a(String... arrstring) {
        try {
            BookRankDetailRoot bookRankDetailRoot = b.b().z(arrstring[0]);
            return bookRankDetailRoot;
        } catch (IOException var2_3) {
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
        BookRankDetailRoot bookRankDetailRoot = (BookRankDetailRoot) object;
        super.onPostExecute(bookRankDetailRoot);
        if (bookRankDetailRoot != null && bookRankDetailRoot.getRanking() != null) {
            this.a.e(1);
            this.a.a.a(bookRankDetailRoot.getRanking().getBooks());
            return;
        }
        this.a.e(2);
        e.a((Activity) this.a, (int) 2131034408);
    }
}
