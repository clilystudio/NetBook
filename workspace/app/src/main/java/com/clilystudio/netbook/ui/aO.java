package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class aO
        extends com.clilystudio.netbook.a_pack.e<Void, Void, BookRankRoot> {
    private /* synthetic */ BookRankListActivity a;

    private aO(BookRankListActivity bookRankListActivity) {
        this.a = bookRankListActivity;
    }

    /* synthetic */ aO(BookRankListActivity bookRankListActivity, byte by) {
        this(bookRankListActivity);
    }

    private /* varargs */ BookRankRoot a() {
        try {
            BookRankRoot bookRankRoot = b.b().d();
            return bookRankRoot;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        BookRankRoot bookRankRoot = (BookRankRoot) object;
        super.onPostExecute(bookRankRoot);
        if (bookRankRoot != null && bookRankRoot.isOk()) {
            BookRankListActivity.a(this.a, 1);
            BookRankListActivity.c(this.a).a(bookRankRoot);
            return;
        }
        BookRankListActivity.a(this.a, 2);
        e.a((Activity) this.a, (int) 2131034408);
    }
}
