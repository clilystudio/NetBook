package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookHelpList;

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
