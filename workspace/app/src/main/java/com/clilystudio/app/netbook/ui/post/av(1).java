package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookHelpList;

final class av extends e<String, Void, BookHelpList> {
    private av(BookHelpListActivity paramBookHelpListActivity) {
    }

    private BookHelpList a(String[] paramArrayOfString) {
        try {
            BookHelpList localBookHelpList = b.b().a(paramArrayOfString[0], paramArrayOfString[1], 0, 20, BookHelpListActivity.n(this.a));
            return localBookHelpList;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.av
 * JD-Core Version:    0.6.2
 */