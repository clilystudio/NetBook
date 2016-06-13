package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.f;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.ui.SimpleTabActivity;
import com.clilystudio.netbook.ui.aa;

public class BookPostTabActivity
        extends SimpleTabActivity {
    private ax e;
    private ax f;
    private String g;
    private String h;

    public static int a(String string) {
        if (!"updated".equals(string)) {
            if ("created".equals(string)) {
                return 1;
            }
            if ("comment-count".equals(string)) {
                return 2;
            }
        }
        return 0;
    }

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, BookPostTabActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a();
    }

    public static Intent a(Context context, String string, String string2, boolean bl) {
        return new d().a(context, BookPostTabActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("FROM_READER", Boolean.valueOf(bl)).a();
    }

    static /* synthetic */ ax a(BookPostTabActivity bookPostTabActivity) {
        return bookPostTabActivity.e;
    }

    static /* synthetic */ ax b(BookPostTabActivity bookPostTabActivity) {
        return bookPostTabActivity.f;
    }

    public static String f(int n) {
        switch (n) {
            default: {
                return "updated";
            }
            case 0: {
                return "updated";
            }
            case 1: {
                return "created";
            }
            case 2:
        }
        return "comment-count";
    }

    public final void a(ax ax2) {
        this.e = ax2;
    }

    public final void b(ax ax2) {
        this.f = ax2;
    }

    @Override
    protected final void f() {
        int n = this.getIntent().getIntExtra("extra_tab_default_index", 0);
        if (n != 0) {
            this.a(n);
        }
    }

    @Override
    public final String[] h() {
        return new String[]{"\u8ba8\u8bba", "\u4e66\u8bc4"};
    }

    @Override
    public final Fragment[] i() {
        this.g = this.getIntent().getStringExtra("BOOK_ID");
        this.h = this.getIntent().getStringExtra("BOOK_TITLE");
        Fragment[] arrfragment = new Fragment[]{BookTopicListFragment.d(), BookReviewListFragment.d()};
        return arrfragment;
    }

    public final String j() {
        return this.g;
    }

    public final void k() {
        new ds((Context) this).a(this.g).b(this.h).a().a();
    }

    public final String l() {
        String string = this.getIntent().getStringExtra("extra_sort_type");
        if (string == null) {
            string = "updated";
        }
        return string;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String string = this.h;
        if (string != null && string.length() > 10) {
            string = string.substring(0, 10) + "...";
        }
        this.a(string, 2130837872, (aa) ((Object) new aw(this)), "\u6392\u5e8f");
        if (this.getIntent().getBooleanExtra("FROM_READER", false)) {
            a.a();
            a.b();
        }
        com.clilystudio.netbook.hpay100.a.a.u(this);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.g = intent.getStringExtra("BOOK_ID");
        this.h = intent.getStringExtra("BOOK_TITLE");
        this.d(this.h);
        i.a().c(new f());
    }
}
