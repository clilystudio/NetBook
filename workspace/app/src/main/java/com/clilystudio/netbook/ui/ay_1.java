package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;

import com.umeng.a.b;

final class ay implements ab {

    BookInfoActivity a;     // final access specifier removed

    ay(BookInfoActivity BookInfoActivity1) {
        a = BookInfoActivity1;
    }

    public final void a() {
        BookInfoActivity.a(a);
        b.a((Context) a, "book_info_download");
    }

    public final void b() {
        new cb((Activity) a, (cd) new az(this)).a().show();
        b.a((Context) a, "share_book_info_ab");
    }
}
