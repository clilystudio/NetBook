package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.R;
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
        this.h = new av() {
            @Override
            public void a() {
                if (BookTagListActivity.this.a == null || BookTagListActivity.this.a.getStatus() == AsyncTask.Status.FINISHED) {
                    BookTagListActivity.this.f.setVisibility(View.VISIBLE);
                    BookTagListActivity.this.a = new aW(BookTagListActivity.this, (byte) 0);
                    BookTagListActivity.this.a.b(new String[0]);
                }
            }
        };
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
        this.a(R.layout.scroll_listview);
        this.c = this.getIntent().getStringExtra("TAG_LIST_KEY");
        this.b(this.c);
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        this.f = layoutInflater.inflate(R.layout.loading_item, null);
        this.f.setVisibility(View.GONE);
        this.e = (ScrollLoadListView) this.findViewById(R.id.content_scroll_list);
        this.e.addFooterView(this.f);
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                if (position >= 0 && position < BookTagListActivity.this.g.size()) {
                    BookSummary bookSummary = BookTagListActivity.this.g.get(position);
                    BookTagListActivity.a(BookTagListActivity.this, bookSummary);
                }
            }
        });
        this.b = new aV(this, layoutInflater);
        this.e.setAdapter(this.b);
        this.b();
    }
}
