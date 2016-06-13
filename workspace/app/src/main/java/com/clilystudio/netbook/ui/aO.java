package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class aO
        extends com.clilystudio.netbook.a.e<Void, Void, BookRankRoot> {
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

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
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
