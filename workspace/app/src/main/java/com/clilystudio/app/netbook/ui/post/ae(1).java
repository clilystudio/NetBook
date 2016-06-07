package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookHelpResult;

final class ae extends e_BaseAsyncTask<String, Void, BookHelpResult> {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ae
 * JD-Core Version:    0.6.2
 */