package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.ui.aa;

final class aw
        implements aa {
    private /* synthetic */ BookPostTabActivity a;

    aw(BookPostTabActivity bookPostTabActivity) {
        this.a = bookPostTabActivity;
    }

    @Override
    public final void a() {
        if (BookPostTabActivity.a(this.a) != null && this.a.g()) {
            BookPostTabActivity.a(this.a).a();
        }
        if (BookPostTabActivity.b(this.a) != null && !this.a.g()) {
            BookPostTabActivity.b(this.a).a();
        }
    }
}
