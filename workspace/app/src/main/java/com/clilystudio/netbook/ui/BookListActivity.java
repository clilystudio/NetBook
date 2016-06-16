package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.g;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookRankDetail;

public abstract class BookListActivity extends BaseActivity {
    protected g a;
    private View b;
    private View c;
    private TextView e;

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, BookRankDetailActivity.class).a("book_list_id", string).a("book_list_title", string2).a();
    }

    protected void a(int n) {
        if (n >= 0 && n < this.a.getCount()) {
            this.startActivity(BookInfoActivity.a(this, ((BookRankDetail) this.a.getItem(n)).get_id()));
        }
    }

    protected abstract void b();

    protected final void e(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.b.setVisibility(View.GONE);
                this.c.setVisibility(View.GONE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.b.setVisibility(View.VISIBLE);
                this.c.setVisibility(View.GONE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 2: {
                this.b.setVisibility(View.GONE);
                this.c.setVisibility(View.VISIBLE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 3:
        }
        this.b.setVisibility(View.GONE);
        this.c.setVisibility(View.GONE);
        this.e.setVisibility(View.VISIBLE);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_list);
        this.b(this.getIntent().getStringExtra("book_list_title"));
        this.b = this.findViewById(R.id.content_loading_pb);
        this.e = (TextView) this.findViewById(R.id.content_empty_text);
        this.c = this.findViewById(R.id.content_load_error);
        this.c.setOnClickListener(new aJ(this));
        this.a = new g(this.getLayoutInflater());
        ListView listView = (ListView) this.findViewById(R.id.content_list);
        listView.setAdapter(this.a);
        listView.setOnItemClickListener(new aK(this));
        this.b();
    }
}
