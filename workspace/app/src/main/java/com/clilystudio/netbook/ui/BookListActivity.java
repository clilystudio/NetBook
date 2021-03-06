package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.widget.CoverView;

public abstract class BookListActivity extends BaseActivity {
    protected BaseDownloadAdapter<BookRankDetail> a;
    private View mLoadingPB;
    private View mErrorIV;
    private TextView mEmptyTV;

    public static Intent a(Context context, String bookListId, String bookListTitle) {
        return new IntentBuilder().put(context, BookRankDetailActivity.class).put("book_list_id", bookListId).put("book_list_title", bookListTitle).build();
    }

    protected void a(int n) {
        if (n >= 0 && n < this.a.getCount()) {
            this.startActivity(BookInfoActivity.getIntent(this, this.a.getItem(n).get_id()));
        }
    }

    protected abstract void b();

    protected final void e(int n) {
        switch (n) {
            case 0:
                this.mLoadingPB.setVisibility(View.VISIBLE);
                this.mErrorIV.setVisibility(View.GONE);
                this.mEmptyTV.setVisibility(View.GONE);
                break;
            case 1:
                this.mLoadingPB.setVisibility(View.GONE);
                this.mErrorIV.setVisibility(View.GONE);
                this.mEmptyTV.setVisibility(View.GONE);
                break;
            case 2:
                this.mLoadingPB.setVisibility(View.GONE);
                this.mErrorIV.setVisibility(View.VISIBLE);
                this.mEmptyTV.setVisibility(View.GONE);
                break;
            case 3:
                this.mLoadingPB.setVisibility(View.GONE);
                this.mErrorIV.setVisibility(View.GONE);
                this.mEmptyTV.setVisibility(View.VISIBLE);
                break;
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_list);
        this.b(this.getIntent().getStringExtra("book_list_title"));
        this.mLoadingPB = this.findViewById(R.id.content_loading_pb);
        this.mEmptyTV = (TextView) this.findViewById(R.id.content_empty_text);
        this.mErrorIV = this.findViewById(R.id.content_load_error);
        this.mErrorIV.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                b();
            }
        });
        this.a = new BaseDownloadAdapter<BookRankDetail>(this.getLayoutInflater(), R.layout.list_item_ori_book) {

            @Override
            protected void a(int var1, BookRankDetail bookRankDetail) {
                CoverView coverView = this.getTagView(0);
                coverView.setImageUrl(bookRankDetail.getFullCover(), R.drawable.cover_default);
                this.setText(1, bookRankDetail.getTitle());
                this.setText(2, bookRankDetail.getShortIntro());
                Resources resources = getLayoutInflater().getContext().getResources();
                Object[] arrobject = new Object[1];
                arrobject[0] = bookRankDetail.getLatelyFollower();
                this.setText(3, resources.getString(R.string.follower_count_format, arrobject));
                Object[] arrobject2 = new Object[1];
                arrobject2[0] = bookRankDetail.getRetentionRatio();
                this.setText(4, resources.getString(R.string.retention_ratio_format, arrobject2));
                this.setVisibility(5, bookRankDetail.getRetentionRatio() == null);
                this.setText(6, bookRankDetail.getAuthor());
                this.setText(7, bookRankDetail.getCat());
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
