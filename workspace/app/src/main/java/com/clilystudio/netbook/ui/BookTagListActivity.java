package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.List;

public class BookTagListActivity extends BaseLoadingActivity {
    private aW a;
    private aV b;
    private String c;
    private ScrollLoadListView e;
    private View f;
    private List<BookSummary> g = new ArrayList<BookSummary>();
    private av h;

    public BookTagListActivity() {
        this.h = new aU(this);
    }

    public static Intent a(Context context, String string) {
        return new d().a(context, BookTagListActivity.class).a("TAG_LIST_KEY", string).a();
    }

    static /* synthetic */ aW a(BookTagListActivity bookTagListActivity, aW aW2) {
        bookTagListActivity.a = aW2;
        return aW2;
    }

    static /* synthetic */ List a(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.g;
    }

    static /* synthetic */ void a(BookTagListActivity bookTagListActivity, BookSummary bookSummary) {
        if (bookSummary != null) {
            bookTagListActivity.startActivity(BookInfoActivity.a(bookTagListActivity, bookSummary.getId()));
        }
    }

    static /* synthetic */ String b(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.c;
    }

    static /* synthetic */ View c(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.f;
    }

    static /* synthetic */ aV d(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.b;
    }

    static /* synthetic */ ScrollLoadListView e(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.e;
    }

    static /* synthetic */ av f(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.h;
    }

    static /* synthetic */ aW g(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.a;
    }

    @Override
    protected final void b() {
        this.i();
        new aX(this, 0).b(new String[0]);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(2130903386);
        this.c = this.getIntent().getStringExtra("TAG_LIST_KEY");
        this.b(this.c);
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        this.f = layoutInflater.inflate(2130903325, null);
        this.f.setVisibility(8);
        this.e = (ScrollLoadListView) this.findViewById(2131493981);
        this.e.addFooterView(this.f);
        this.e.setOnItemClickListener(new aT(this));
        this.b = new aV(this, layoutInflater);
        this.e.setAdapter(this.b);
        this.b();
    }
}
