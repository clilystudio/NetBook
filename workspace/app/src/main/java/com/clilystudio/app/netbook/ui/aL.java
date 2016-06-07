package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookRankDetailRoot;

import java.io.IOException;

final class aL extends e_BaseAsyncTask<String, Void, BookRankDetailRoot> {
    private aL(BookRankDetailActivity paramBookRankDetailActivity) {
    }

    private BookRankDetailRoot a(String[] paramArrayOfString) {
        try {
            BookRankDetailRoot localBookRankDetailRoot = b.b().z(paramArrayOfString[0]);
            return localBookRankDetailRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aL
 * JD-Core Version:    0.6.2
 */