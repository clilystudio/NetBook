package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.ui.SimpleTabActivity;
import com.clilystudio.netbook.ui.aa;

public class BookPostTabActivity extends SimpleTabActivity {

    private ax e;
    private ax f;
    private String g;
    private String h;

    public static int a(String String1) {
        if (!"updated".equals(String1)) {
            if ("created".equals(String1))
                return 1;
            else if ("comment-count".equals(String1))
                return 2;
        }
        return 0;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3, boolean boolean4) {
    }

    static ax a(BookPostTabActivity BookPostTabActivity1) {
        return BookPostTabActivity1.e;
    }

    static ax b(BookPostTabActivity BookPostTabActivity1) {
        return BookPostTabActivity1.f;
    }

    public static String f(int int1) {
        switch (int1) {
            default:
                return "updated";
            case 0:
                return "updated";
            case 1:
                return "created";
            case 2:
                return "comment-count";
        }
    }

    public final void a(ax ax1) {
        e = ax1;
    }

    public final void b(ax ax1) {
        f = ax1;
    }

    protected final void f() {
        int int1 = getIntent().getIntExtra("extra_tab_default_index", 0);

        if (int1 != 0)
            a(int1);
    }

    public final String[] h() {
        return new String[]{"\u8BA8\u8BBA", "\u4E66\u8BC4"};
    }

    public final Fragment[] i() {
        Object[] Object_1darray1;

        g = getIntent().getStringExtra("BOOK_ID");
        h = getIntent().getStringExtra("BOOK_TITLE");
        Object_1darray1 = new Fragment[2];
        Object_1darray1[0] = BookTopicListFragment.d();
        Object_1darray1[1] = BookReviewListFragment.d();
        return (Fragment[]) Object_1darray1;
    }

    public final String j() {
        return g;
    }

    public final void k() {
        new ds((Context) this).a(g).b(h).a().a();
    }

    public final String l() {
        String String1 = getIntent().getStringExtra("extra_sort_type");

        if (String1 == null)
            String1 = "updated";
        return String1;
    }

    protected void onCreate(Bundle Bundle1) {
        String String2;

        super.onCreate(Bundle1);
        String2 = h;
        if (String2 != null && String2.length() > 10)
            String2 = new StringBuilder().append(String2.substring(0, 10)).append("...").toString();
        a(String2, 2130837872, (aa) new aw(this), "\u6392\u5E8F");
        if (getIntent().getBooleanExtra("FROM_READER", false)) {
            com.clilystudio.netbook.a.a();
            com.clilystudio.netbook.a.b();
        }
        com.clilystudio.netbook.hpay100.a.a.u((Context) this);
    }

    protected void onNewIntent(Intent Intent1) {
        super.onNewIntent(Intent1);
        g = Intent1.getStringExtra("BOOK_ID");
        h = Intent1.getStringExtra("BOOK_TITLE");
        d(h);
        i.a().c(new com.clilystudio.netbook.event.f());
    }
}
