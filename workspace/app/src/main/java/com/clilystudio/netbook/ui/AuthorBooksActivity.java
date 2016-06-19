package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.E;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookSummary;

public class AuthorBooksActivity extends BaseLoadingActivity {
    private ListView a;
    private E b;
    private String c;

    public static Intent a(Context context, String string) {
        return new d().a(context, AuthorBooksActivity.class).a("keyword", string).a();
    }

    static /* synthetic */ ListView a(AuthorBooksActivity authorBooksActivity) {
        return authorBooksActivity.a;
    }

    static /* synthetic */ E b(AuthorBooksActivity authorBooksActivity) {
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
        this.b = new E(LayoutInflater.from(this));
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
