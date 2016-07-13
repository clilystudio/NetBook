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
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.SearchResultRoot;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.CoverView;

import java.util.List;
import java.util.Locale;

public class AuthorBooksActivity extends BaseLoadingActivity {
    private ListView a;
    private BaseDownloadAdapter<BookSummary> b;
    private String c;

    public static Intent a(Context context, String string) {
        return new IntentBuilder().put(context, AuthorBooksActivity.class).put("keyword", string).build();
    }

    static /* synthetic */ ListView a(AuthorBooksActivity authorBooksActivity) {
        return authorBooksActivity.a;
    }

    static /* synthetic */ BaseDownloadAdapter<BookSummary> b(AuthorBooksActivity authorBooksActivity) {
        return authorBooksActivity.b;
    }

    @Override
    protected final void b() {
        this.i();
        new BaseAsyncTask<String, Void, List<BookSummary>>() {

            @Override
            protected List<BookSummary> doInBackground(String... params) {
                SearchResultRoot searchResultRoot = ApiServiceProvider.getApiService().o(params[0]);
                if (searchResultRoot == null) return null;
                return searchResultRoot.getBooks();
            }

            @Override
            protected void onPostExecute(List<BookSummary> bookSummaries) {
                super.onPostExecute(bookSummaries);
                if (bookSummaries == null) {
                    AuthorBooksActivity.this.h();
                    ToastUtil.showToast(AuthorBooksActivity.this, R.string.search_failed);
                    return;
                }
                if (bookSummaries.size() > 0) {
                    AuthorBooksActivity.this.f();
                } else {
                    AuthorBooksActivity.this.g();
                }
                AuthorBooksActivity.b(AuthorBooksActivity.this).a(bookSummaries);
            }
        }.b(this.c);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.listview_search);
        this.c = this.getIntent().getStringExtra("keyword");
        this.b(this.c);
        this.a = (ListView) this.findViewById(R.id.search_list);
        this.b = new BaseDownloadAdapter<BookSummary>(LayoutInflater.from(this), R.layout.list_item_search_result) {

            @Override
            protected void a(int var1, BookSummary bookSummary) {
                CoverView coverView = this.getTagView(0);
                coverView.setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
                this.setText(1, bookSummary.getTitle());
                Object[] arrobject = new Object[]{bookSummary.getLatelyFollower(), Float.valueOf(bookSummary.getRetentionRatio()), bookSummary.getAuthor()};
                this.setText(2, String.format(Locale.CHINA, "%d人在追  |  %.1f%%读者留存  |  %s著", arrobject));
                this.setVisibility(3, TextUtils.isEmpty(bookSummary.getPromLink()));
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.prom_label};
            }
        };
        this.a.setAdapter(this.b);
        this.a.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookSummary bookSummary;
                int n2 = position - AuthorBooksActivity.this.a.getHeaderViewsCount();
                if (n2 >= 0 && n2 < AuthorBooksActivity.this.b.getCount() && (bookSummary = AuthorBooksActivity.this.b.getItem(n2)) != null) {
                    AuthorBooksActivity.this.startActivity(BookInfoActivity.a(AuthorBooksActivity.this, bookSummary.getId()));
                }
            }
        });
        this.b();
    }
}
