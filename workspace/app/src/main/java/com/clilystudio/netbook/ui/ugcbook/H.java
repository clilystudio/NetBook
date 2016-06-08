package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.ui.ab;
import com.clilystudio.netbook.util.e;

final class H
        implements ab {
    H(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity) {
    }

    public final void a() {
        if (UGCGuideEditBooksActivity.a(this.a).getBooks().size() == 0) {
            e.a(this.a, "至少要添加一本书籍才能保存哦");
            return;
        }
        new P(this.a).b(new Void[0]);
    }

    public final void b() {
        if (UGCGuideEditBooksActivity.b(this.a))
            new O(this.a).b(new Void[0]);
    }
}

