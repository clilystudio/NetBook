package com.clilystudio.netbook.ui;

final class ay
        implements ab {
    final /* synthetic */ BookInfoActivity a;

    ay(BookInfoActivity bookInfoActivity) {
        this.a = bookInfoActivity;
    }

    @Override
    public final void a() {
        BookInfoActivity.a(this.a);
        b.a(this.a, "book_info_download");
    }

    @Override
    public final void b() {
        new cb(this.a, new az(this)).a().show();
        b.a(this.a, "share_book_info_ab");
    }
}
