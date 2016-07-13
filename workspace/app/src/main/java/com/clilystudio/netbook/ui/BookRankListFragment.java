package com.clilystudio.netbook.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.ScrollLoadListView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BookRankListFragment extends Fragment {
    protected BaseDownloadAdapter<BookRankDetail> a;
    private View b;
    private View c;
    private View d;
    private TextView e;
    private List<BookRankDetail> f = new ArrayList<>(100);

    public static BookRankListFragment a(String string, String string2) {
        BookRankListFragment bookRankListFragment = new BookRankListFragment();
        Bundle bundle = new Bundle();
        bundle.putString("type", string2);
        bundle.putString("book_list_id", string);
        bookRankListFragment.setArguments(bundle);
        return bookRankListFragment;
    }

    static /* synthetic */ void a(BookRankListFragment bookRankListFragment) {
        bookRankListFragment.a();
    }

    static /* synthetic */ View b(BookRankListFragment bookRankListFragment) {
        return bookRankListFragment.b;
    }

    static /* synthetic */ List c(BookRankListFragment bookRankListFragment) {
        return bookRankListFragment.f;
    }

    private void a() {
        BaseAsyncTask<String, Void, BookRankDetailRoot> g = new BaseAsyncTask<String, Void, BookRankDetailRoot>() {

            @Override
            protected BookRankDetailRoot doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().z(BookRankListFragment.this.getArguments().getString("book_list_id"));
            }

            @Override
            protected void onPostExecute(BookRankDetailRoot bookRankDetailRoot) {
                super.onPostExecute(bookRankDetailRoot);
                BookRankListFragment.b(BookRankListFragment.this).setVisibility(View.GONE);
                if (bookRankDetailRoot != null && bookRankDetailRoot.getRanking() != null) {
                    BookRankListFragment.this.b(1);
                    BookRankListFragment.this.f.addAll(Arrays.asList(bookRankDetailRoot.getRanking().getBooks()));
                    BookRankListFragment.this.a.a(BookRankListFragment.c(BookRankListFragment.this));
                    return;
                }
                BookRankListFragment.this.b(2);
                ToastUtil.showToast(BookRankListFragment.this.getActivity(), R.string.load_failed_tips);
            }
        };
        g.b();
    }

    protected final void a(int n) {
        if (n >= 0 && n < this.a.getCount()) {
            BookRankDetail bookRankDetail = this.a.getItem(n);
            this.startActivity(BookInfoActivity.a(this.getActivity(), bookRankDetail.get_id()));
        }
    }

    protected final void b(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.c.setVisibility(View.GONE);
                this.d.setVisibility(View.GONE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.c.setVisibility(View.VISIBLE);
                this.d.setVisibility(View.GONE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 2: {
                this.c.setVisibility(View.GONE);
                this.d.setVisibility(View.VISIBLE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 3:
        }
        this.c.setVisibility(View.GONE);
        this.d.setVisibility(View.GONE);
        this.e.setVisibility(View.VISIBLE);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.getArguments().getString("book_list_id") == null) {
            this.b(3);
            return;
        }
        this.a();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View view = layoutInflater.inflate(R.layout.fragment_book_rank_list, viewGroup, false);
        this.c = view.findViewById(R.id.content_loading_pb);
        this.e = (TextView) view.findViewById(R.id.content_empty_text);
        this.d = view.findViewById(R.id.content_load_error);
        this.d.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                BookRankListFragment.a(BookRankListFragment.this);
            }
        });
        this.a = new BaseDownloadAdapter<BookRankDetail>(this.getActivity().getLayoutInflater(), R.layout.list_item_ori_book){

            @Override
            protected void a(int var1, BookRankDetail bookRankDetail) {
                CoverView coverView = this.a(0);
                coverView.setImageUrl(bookRankDetail.getFullCover(), R.drawable.cover_default);
                this.a(1, bookRankDetail.getTitle());
                this.a(2, bookRankDetail.getShortIntro());
                Resources resources = getActivity().getResources();
                Object[] arrobject = new Object[1];
                arrobject[0] = bookRankDetail.getLatelyFollower();
                this.a(3, resources.getString(R.string.follower_count_format, arrobject));
                Object[] arrobject2 = new Object[1];
                arrobject2[0] = bookRankDetail.getRetentionRatio();
                this.a(4, resources.getString(R.string.retention_ratio_format, arrobject2));
                this.a(4, bookRankDetail.getRetentionRatio() == null);
                this.a(5, bookRankDetail.getRetentionRatio() == null);
                this.a(6, bookRankDetail.getAuthor());
                this.a(7, bookRankDetail.getCat());
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.tv_follower_count, R.id.tv_retention_ratio, R.id.tv_retention_separate, R.id.tv_author, R.id.tv_category};
            }
        };
        ScrollLoadListView scrollLoadListView = (ScrollLoadListView) view.findViewById(R.id.content_list);
        scrollLoadListView.setAdapter(this.a);
        scrollLoadListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookRankListFragment.this.a(position);
            }
        });
        this.b = layoutInflater.inflate(R.layout.loading_item, (ViewGroup)getActivity().getWindow().getDecorView(), false);
        scrollLoadListView.addFooterView(this.b);
        this.b.setVisibility(View.GONE);
        return view;
    }
}
