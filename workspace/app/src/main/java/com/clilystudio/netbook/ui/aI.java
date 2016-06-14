package com.clilystudio.netbook.ui;

import android.content.Context;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookInfo;

import java.io.IOException;

final class aI
        extends e<String, Void, BookInfo> {
    private /* synthetic */ BookInfoActivity a;

    private aI(BookInfoActivity bookInfoActivity) {
        this.a = bookInfoActivity;
    }

    /* synthetic */ aI(BookInfoActivity bookInfoActivity, byte by) {
        this(bookInfoActivity);
    }

    private /* varargs */ BookInfo a(String... arrstring) {
        try {
            BookInfo bookInfo = b.b().r(arrstring[0]);
            return bookInfo;
        } catch (IOException var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        BookInfo bookInfo = (BookInfo) object;
        super.onPostExecute(bookInfo);
        if (this.a.isFinishing()) return;
        if (bookInfo != null) {
            BookInfoActivity.b(this.a, 1);
            BookInfoActivity.a(this.a, bookInfo);
            BookInfoActivity.d(this.a);
            BookInfoActivity.e(this.a);
            BookInfoActivity.f(this.a);
            a.a((Context) this.a, bookInfo);
            return;
        }
        BookInfoActivity.b(this.a, 2);
    }
}
