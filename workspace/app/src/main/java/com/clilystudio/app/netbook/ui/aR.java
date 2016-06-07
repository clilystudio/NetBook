package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookRankDetailRoot;

import java.io.IOException;

final class aR extends e_BaseAsyncTask<String, Void, BookRankDetailRoot> {
    private aR(BookRankListFragment paramBookRankListFragment) {
    }

    private BookRankDetailRoot a() {
        try {
            b.a();
            BookRankDetailRoot localBookRankDetailRoot = b.b().z(this.a.getArguments().getString("book_list_id"));
            return localBookRankDetailRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aR
 * JD-Core Version:    0.6.2
 */