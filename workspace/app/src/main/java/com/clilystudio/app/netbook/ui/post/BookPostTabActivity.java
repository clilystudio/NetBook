package com.clilystudio.app.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.app.netbook.a_ActivityStack;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.event.f;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.ui.SimpleTabActivity;

public class BookPostTabActivity extends SimpleTabActivity {
    private ax e;
    private ax f;
    private String g;
    private String h;

    public static int a(String paramString) {
        if (!"updated".equals(paramString)) {
            if ("created".equals(paramString))
                return 1;
            if ("comment-count".equals(paramString))
                return 2;
        }
        return 0;
    }

    public static Intent a(Context paramContext, String paramString1, String paramString2) {
        return new d_IntentFactory().a_setClass(paramContext, BookPostTabActivity.class).a_putExtra("BOOK_ID", paramString1).a_putExtra("BOOK_TITLE", paramString2).a();
    }

    public static Intent a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean) {
        return new d_IntentFactory().a_setClass(paramContext, BookPostTabActivity.class).a_putExtra("BOOK_ID", paramString1).a_putExtra("BOOK_TITLE", paramString2).a_putExtra("FROM_READER", Boolean.valueOf(paramBoolean)).a();
    }

    public static String f(int paramInt) {
        switch (paramInt) {
            default:
                return "updated";
            case 0:
                return "updated";
            case 1:
                return "created";
            case 2:
        }
        return "comment-count";
    }

    public final void a(ax paramax) {
        this.e = paramax;
    }

    public final void b(ax paramax) {
        this.f = paramax;
    }

    protected final void f() {
        int i = getIntent().getIntExtra("extra_tab_default_index", 0);
        if (i != 0)
            a(i);
    }

    public final String[] h() {
        return new String[]{"讨论", "书评"};
    }

    public final Fragment[] i() {
        this.g = getIntent().getStringExtra("BOOK_ID");
        this.h = getIntent().getStringExtra("BOOK_TITLE");
        Fragment[] arrayOfFragment = new Fragment[2];
        arrayOfFragment[0] = BookTopicListFragment.d();
        arrayOfFragment[1] = BookReviewListFragment.d();
        return arrayOfFragment;
    }

    public final String j() {
        return this.g;
    }

    public final void k() {
        new ds(this).a(this.g).b(this.h).a().a();
    }

    public final String l() {
        String str = getIntent().getStringExtra("extra_sort_type");
        if (str == null)
            str = "updated";
        return str;
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String str = this.h;
        if ((str != null) && (str.length() > 10))
            str = str.substring(0, 10) + "...";
        a_initContentView(str, 2130837872, new aw(this), "排序");
        if (getIntent().getBooleanExtra("FROM_READER", false)) {
            a_ActivityStack.a_getInstance();
            a_ActivityStack.b_clearAll();
        }
        com.arcsoft.hpay100.a.a.u(this);
    }

    protected void onNewIntent(Intent paramIntent) {
        super.onNewIntent(paramIntent);
        this.g = paramIntent.getStringExtra("BOOK_ID");
        this.h = paramIntent.getStringExtra("BOOK_TITLE");
        d_setTitle(this.h);
        i.a().c(new f());
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.BookPostTabActivity
 * JD-Core Version:    0.6.2
 */