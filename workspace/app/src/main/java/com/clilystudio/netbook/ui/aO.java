package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookRankRoot;

import java.io.IOException;

final class aO extends e<Void, Void, BookRankRoot> {
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

