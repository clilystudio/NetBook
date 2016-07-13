package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.widget.CoverView;

public abstract class BookListActivity extends BaseActivity {
    protected BaseDownloadAdapter<BookRankDetail> a;
    private View b;
    private View c;
    private TextView e;

    public static Intent a(Context context, String string, String string2) {
        return new IntentBuilder().put(context, BookRankDetailActivity.class).put("book_list_id", string).put("book_list_title", string2).build();
    }

    protected void a(int n) {
        if (n >= 0 && n < this.a.getCount()) {
            this.startActivity(BookInfoActivity.a(this, this.a.getItem(n).get_id()));
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
        this.c.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                b();
            }
        });
        this.a = new BaseDownloadAdapter<BookRankDetail>(this.getLayoutInflater(), R.layout.list_item_ori_book){

            @Override
            protected void a(int var1, BookRankDetail bookRankDetail) {
                CoverView coverView = this.a(0);
                coverView.setImageUrl(bookRankDetail.getFullCover(), R.drawable.cover_default);
                this.a(1, bookRankDetail.getTitle());
                this.a(2, bookRankDetail.getShortIntro());
                Resources resources = getLayoutInflater().getContext().getResources();
                Object[] arrobject = new Object[1];
                arrobject[0] = bookRankDetail.getLatelyFollower();
                this.a(3, resources.getString(R.string.follower_count_format, arrobject));
                Object[] arrobject2 = new Object[1];
                arrobject2[0] = bookRankDetail.getRetentionRatio();
                this.a(4, resources.getString(R.string.retention_ratio_format, arrobject2));
                this.a(5, bookRankDetail.getRetentionRatio() == null);
                this.a(6, bookRankDetail.getAuthor());
                this.a(7, bookRankDetail.getCat());
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.tv_follower_count, R.id.tv_retention_ratio, R.id.tv_retention_separate, R.id.tv_author, R.id.tv_category};
            }
        };
        ListView listView = (ListView) this.findViewById(R.id.content_list);
        listView.setAdapter(this.a);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookListActivity.this.a(position);
            }
        });
        this.b();
    }
}
