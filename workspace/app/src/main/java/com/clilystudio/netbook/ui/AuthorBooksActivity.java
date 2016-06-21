package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public class AuthorBooksActivity extends BaseLoadingActivity {
    private ListView a;
    private W<BookSummary> b;
    private String c;

    public static Intent a(Context context, String string) {
        return new d().a(context, AuthorBooksActivity.class).a("keyword", string).a();
    }

    static /* synthetic */ ListView a(AuthorBooksActivity authorBooksActivity) {
        return authorBooksActivity.a;
    }

    static /* synthetic */ W<BookSummary> b(AuthorBooksActivity authorBooksActivity) {
        return authorBooksActivity.b;
    }

    @Override
    protected final void b() {
        this.i();
        H h = new H(this, 0);
        String[] arrstring = new String[]{this.c};
        h.b(arrstring);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.listview_search);
        this.c = this.getIntent().getStringExtra("keyword");
        this.b(this.c);
        this.a = (ListView) this.findViewById(R.id.search_list);
        this.b = new W<BookSummary>(LayoutInflater.from(this), R.layout.list_item_search_result) {

            @Override
            protected void a(int var1, BookSummary bookSummary) {
                ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
                this.a(1, bookSummary.getTitle());
                Object[] arrobject = new Object[]{bookSummary.getLatelyFollower(), Float.valueOf(bookSummary.getRetentionRatio()), bookSummary.getAuthor()};
                this.a(2, String.format("%d人在追  |  %.1f%%读者留存  |  %s著", arrobject));
                this.a(3, TextUtils.isEmpty(bookSummary.getPromLink()));
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.prom_label};
            }
        };
        this.a.setAdapter(this.b);
        this.a.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookSummary bookSummary;
                int n2 = position - AuthorBooksActivity.this.a.getHeaderViewsCount();
                if (n2 >= 0 && n2 < AuthorBooksActivity.this.b.getCount() && (bookSummary = (BookSummary) AuthorBooksActivity.this.b.getItem(n2)) != null) {
                    AuthorBooksActivity.this.startActivity(BookInfoActivity.a(AuthorBooksActivity.this, bookSummary.getId()));
                }
            }
        });
        this.b();
    }
}
