package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookInfo;

import java.io.IOException;

final class aI extends e<String, Void, BookInfo> {
    private aI(BookInfoActivity paramBookInfoActivity) {
    }

    private BookInfo a(String[] paramArrayOfString) {
        try {
            BookInfo localBookInfo = b.b().r(paramArrayOfString[0]);
            return localBookInfo;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

