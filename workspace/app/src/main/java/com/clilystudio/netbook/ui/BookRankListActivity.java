package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.BookRankAdapter;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.k;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankSummary;
import com.umeng.a.b;

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
        new aO(this, 0).b(new Void[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    @l
    public void clickListItem(x x2) {
        BookRankSummary bookRankSummary = x2.b();
        String string = x2.a() ? "male" : "female";
        Intent intent = !bookRankSummary.isCollapse() && a.r(this, "rank_revision_switch") ? BookRankMainActivity.a(this, bookRankSummary.getIds(), bookRankSummary.getTitle(), string) : BookRankDetailActivity.a(this, bookRankSummary.get_id(), bookRankSummary.getTitle());
        this.startActivity(intent);
        String string2 = bookRankSummary.getTitle();
        b.a(this, "book_rank_list_item", string2 + "_" + string);
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

    /*
     * Enabled aggressive block sorting
     */
    @l
    public void onExpand(final k k2) {
        if (!a.g() || a.k() || k2.a() != this.e.getLastVisiblePosition()) {
            return;
        }
        this.f.postDelayed(new Runnable() {
            @Override
            public void run() {
                BookRankListActivity.this.e.smoothScrollToPositionFromTop(k2.a(), 0);
            }
        }, 50);
    }

    @Override
    public void onPause() {
        super.onPause();
        i.a().b(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        i.a().a(this);
    }
}
