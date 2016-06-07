package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookRankRoot;

import java.io.IOException;

final class aO extends e_BaseAsyncTask<Void, Void, BookRankRoot> {
    private aO(BookRankListActivity paramBookRankListActivity) {
    }

    private BookRankRoot a() {
        try {
            BookRankRoot localBookRankRoot = b.b().d();
            return localBookRankRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aO
 * JD-Core Version:    0.6.2
 */