package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookHelpResult;

final class ae extends e<String, Void, BookHelpResult> {
    private ae(BookHelpActivity paramBookHelpActivity) {
    }

    private BookHelpResult a(String[] paramArrayOfString) {
        try {
            BookHelpResult localBookHelpResult = b.b().E(paramArrayOfString[0]);
            return localBookHelpResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

