package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.adapter.BookRankAdapter;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.BookRankClickEvent;
import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.model.BookRankSummary;
import com.squareup.otto.Subscribe;

public class BookRankListActivity extends BaseActivity {
    private View a;
    private View b;
    private BookRankAdapter c;
    private ListView e;
    private Handler f;

    static /* synthetic */ void a(BookRankListActivity bookRankListActivity) {
        bookRankListActivity.b();
    }

    static /* synthetic */ void a(BookRankListActivity bookRankListActivity, int n) {
        bookRankListActivity.a(n);
    }

    static /* synthetic */ ListView b(BookRankListActivity bookRankListActivity) {
        return bookRankListActivity.e;
    }

    static /* synthetic */ BookRankAdapter c(BookRankListActivity bookRankListActivity) {
        return bookRankListActivity.c;
    }

    private void a(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.a.setVisibility(View.GONE);
                this.b.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.a.setVisibility(View.VISIBLE);
                this.b.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.a.setVisibility(View.GONE);
        this.b.setVisibility(View.VISIBLE);
    }

    private void b() {
        this.a(0);
        new BaseAsyncTask<Void, Void, BookRankRoot>(){

            @Override
            protected BookRankRoot doInBackground(Void... params) {
                return ApiServiceProvider.getApiService().d();
            }

            @Override
            protected void onPostExecute(BookRankRoot bookRankRoot) {
                super.onPostExecute(bookRankRoot);
                if (bookRankRoot != null && bookRankRoot.isOk()) {
                    BookRankListActivity.a(BookRankListActivity.this, 1);
                    BookRankListActivity.c(BookRankListActivity.this).a(bookRankRoot);
                    return;
                }
                BookRankListActivity.a(BookRankListActivity.this, 2);
                com.clilystudio.netbook.util.e.a(BookRankListActivity.this, R.string.load_failed_tips);
            }
        }.b();
    }

    @Subscribe
    public void onBookRankClickEvent(BookRankClickEvent x2) {
        BookRankSummary bookRankSummary = x2.getBookRankSummary();
        String string = x2.isMale() ? "male" : "female";
        Intent intent = !bookRankSummary.isCollapse() && com.clilystudio.netbook.hpay100.a.a.r(this, "rank_revision_switch") ? BookRankMainActivity.a(this, bookRankSummary.getIds(), bookRankSummary.getTitle(), string) : BookRankDetailActivity.a(this, bookRankSummary.get_id(), bookRankSummary.getTitle());
        this.startActivity(intent);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_book_rank_list);
        this.b(R.string.rank_list);
        this.f = new Handler();
        this.e = (ListView) this.findViewById(R.id.common_list_content);
        this.a = this.findViewById(R.id.common_list_pb);
        this.b = this.findViewById(R.id.common_list_error);
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                BookRankListActivity.a(BookRankListActivity.this);
            }
        });
        this.c = new BookRankAdapter(this.getLayoutInflater());
        this.e.setAdapter(this.c);
        this.b();
    }

    @Override
    public void onPause() {
        super.onPause();
        BusProvider.getInstance().unregister(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        BusProvider.getInstance().register(this);
    }
}
