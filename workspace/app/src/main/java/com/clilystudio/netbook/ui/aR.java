package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookRankDetailRoot;

import java.io.IOException;

final class aR extends e<String, Void, BookRankDetailRoot> {
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

