package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BookTagListActivity extends BaseLoadingActivity {
    private com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> a;
    private W<BookSummary> b;
    private String c;
    private ScrollLoadListView e;
    private View f;
    private List<BookSummary> g = new ArrayList<>();
    private av h;

    public BookTagListActivity() {
        this.h = new av() {
            @Override
            public void a() {
                if (BookTagListActivity.this.a == null || BookTagListActivity.this.a.getStatus() == AsyncTask.Status.FINISHED) {
                    BookTagListActivity.this.f.setVisibility(View.VISIBLE);
                    BookTagListActivity.this.a = new com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>>() {

                        @Override
                        protected List<BookSummary> doInBackground(String... params) {
                            BookTagRoot bookTagRoot = com.clilystudio.netbook.api.b.b().c(BookTagListActivity.this.c, BookTagListActivity.this.g.size(), 50);
                            if (bookTagRoot == null) return null;
                            if (bookTagRoot.getBooks() == null) return null;
                            return Arrays.asList(bookTagRoot.getBooks());
                        }

                        @Override
                        protected void onPostExecute(List<BookSummary> bookSummaries) {
                            super.onPostExecute(bookSummaries);
                            BookTagListActivity.this.f.setVisibility(View.GONE);
                            if (bookSummaries != null) {
                                BookTagListActivity.this.f();
                                int n = bookSummaries.size();
                                if (n > 0) {
                                    BookTagListActivity.this.g.addAll(bookSummaries);
                                    BookTagListActivity.this.b.a(BookTagListActivity.this.g);
                                    if (n >= 50) {
                                        BookTagListActivity.this.e.setOnLastItemListener(BookTagListActivity.this.h);
                                        return;
                                    }
                                }
                                BookTagListActivity.this.e.setOnLastItemListener(null);
                                return;
                            }
                            com.clilystudio.netbook.util.e.a(BookTagListActivity.this, "加载失败，请检查网络或稍后再试");
                        }
                    };
                    BookTagListActivity.this.a.b();
                }
            }
        };
    }

    public static Intent a(Context context, String string) {
        return new d().a(context, BookTagListActivity.class).a("TAG_LIST_KEY", string).a();
    }

    static /* synthetic */ com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> a(BookTagListActivity bookTagListActivity, com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> aW2) {
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

    static /* synthetic */ W<BookSummary> d(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.b;
    }

    static /* synthetic */ ScrollLoadListView e(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.e;
    }

    static /* synthetic */ av f(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.h;
    }

    static /* synthetic */ com.clilystudio.netbook.a_pack.e<String, Void, List<BookSummary>> g(BookTagListActivity bookTagListActivity) {
        return bookTagListActivity.a;
    }

    @Override
    protected final void b() {
        this.i();
        new e<String, Void, List<BookSummary>>() {
            @Override
            protected List<BookSummary> doInBackground(String... params) {
                BookTagRoot bookTagRoot = com.clilystudio.netbook.api.b.b().c(BookTagListActivity.this.c, 0, 50);
                if (bookTagRoot == null) return null;
                if (bookTagRoot.getBooks() == null) return null;
                return Arrays.asList(bookTagRoot.getBooks());
            }

            @Override
            protected void onPostExecute(List<BookSummary> bookSummaries) {
                super.onPostExecute(bookSummaries);
                BookTagListActivity.this.f.setVisibility(View.GONE);
                if (bookSummaries != null) {
                    int n = bookSummaries.size();
                    if (n > 0) {
                        BookTagListActivity.this.f();
                        BookTagListActivity.this.g.clear();
                        BookTagListActivity.this.g.addAll(bookSummaries);
                        BookTagListActivity.this.b.a(BookTagListActivity.this.g);
                        if (n < 50) {
                            BookTagListActivity.this.e.setOnLastItemListener(null);
                            return;
                        }
                        BookTagListActivity.this.e.setOnLastItemListener(BookTagListActivity.this.h);
                        return;
                    }
                    BookTagListActivity.this.g();
                    return;
                }
                BookTagListActivity.this.h();
            }
        }.b();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.scroll_listview);
        this.c = this.getIntent().getStringExtra("TAG_LIST_KEY");
        this.b(this.c);
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        this.f = layoutInflater.inflate(R.layout.loading_item, (ViewGroup)getWindow().getDecorView(), false);
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
        this.b = new W<BookSummary>(layoutInflater, R.layout.list_item_book_tags){

            @Override
            protected void a(int var1, BookSummary bookSummary) {
                this.a(0, CoverView.class).setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
                this.a(1, bookSummary.getTitle());
                this.a(2, bookSummary.getShortIntro());
                Object[] arrobject = bookSummary.getTags();
                if (arrobject != null && arrobject.length > 0) {
                    String string = TextUtils.join(" | ", arrobject);
                    this.a(3, false);
                    this.a(3, string);
                    return;
                }
                this.a(3, true);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.book_tags};
            }
        };
        this.e.setAdapter(this.b);
        this.b();
    }
}
