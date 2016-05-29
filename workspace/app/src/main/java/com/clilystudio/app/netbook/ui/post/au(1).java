package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookHelpList;

final class au extends e<String, Void, BookHelpList> {
    private au(BookHelpListActivity paramBookHelpListActivity) {
    }

    private BookHelpList a(String[] paramArrayOfString) {
        if (!isCancelled())
            try {
                BookHelpList localBookHelpList = b.b().a(paramArrayOfString[0], paramArrayOfString[1], BookHelpListActivity.j(this.a).size(), 20, BookHelpListActivity.n(this.a));
                return localBookHelpList;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.au
 * JD-Core Version:    0.6.2
 */