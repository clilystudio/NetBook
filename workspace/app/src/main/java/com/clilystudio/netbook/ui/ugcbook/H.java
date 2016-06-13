package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.ui.ab;
import com.clilystudio.netbook.util.e;

final class H
        implements ab {
    private /* synthetic */ UGCGuideEditBooksActivity a;

    H(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        this.a = uGCGuideEditBooksActivity;
    }

    public final void a() {
        if (UGCGuideEditBooksActivity.a(this.a).getBooks().size() == 0) {
            e.a((Activity) this.a, (String) "\u81f3\u5c11\u8981\u6dfb\u52a0\u4e00\u672c\u4e66\u7c4d\u624d\u80fd\u4fdd\u5b58\u54e6");
            return;
        }
        new P(this.a).b(new Void[0]);
    }

    public final void b() {
        if (UGCGuideEditBooksActivity.b(this.a)) {
            new O(this.a).b(new Void[0]);
        }
    }
}
