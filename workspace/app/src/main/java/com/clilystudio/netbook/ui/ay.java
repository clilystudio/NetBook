package com.clilystudio.netbook.ui;

import com.xiaomi.mistatistic.sdk.MiStatInterface;

final class ay implements ab {
    final /* synthetic */ BookInfoActivity a;

    ay(BookInfoActivity bookInfoActivity) {
        this.a = bookInfoActivity;
    }

    @Override
    public final void a() {
        BookInfoActivity.a(this.a);
        MiStatInterface.recordCountEvent("book_info_download", null);
    }

    @Override
    public final void b() {
        new cb(this.a, new az(this)).a().show();
        MiStatInterface.recordCountEvent( "share_book_info_ab", null);
    }
}
