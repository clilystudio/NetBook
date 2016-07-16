package com.clilystudio.netbook.ui;

import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.BookListRoot;
import com.clilystudio.netbook.model.CategoryBook;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.TempUtil;
import com.clilystudio.netbook.widget.CoverView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BookCategoryFragment extends Fragment {
    private PullToRefreshListView a;
    private ListView b;
    private View c;
    private BaseDownloadAdapter<CategoryBook> d;
    private View e;
    private TextView f;
    private String g;
    private BaseAsyncTask<String, Void, List<CategoryBook>> h;
    private List<CategoryBook> i = new ArrayList<>();
    private PullToRefreshBase.OnLastItemVisibleListener j;

    public BookCategoryFragment() {
        this.j = new PullToRefreshBase.OnLastItemVisibleListener() {

            @Override
            public void onLastItemVisible() {
                if (BookCategoryFragment.this.h == null || BookCategoryFragment.this.h.getStatus() == AsyncTask.Status.FINISHED) {
                    BookCategoryFragment.f(BookCategoryFragment.this).setVisibility(View.VISIBLE);
                    BookCategoryFragment.this.h = getaqclass(true);
                    BookCategoryFragment.this.h.b();
                }
            }
        };
    }

    static /* synthetic */ ListView a(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.b;
    }

    public static BookCategoryFragment a(String string) {
        BookCategoryFragment bookCategoryFragment = new BookCategoryFragment();
        Bundle bundle = new Bundle();
        bundle.putString("bookcategory_type", string);
        bookCategoryFragment.setArguments(bundle);
        return bookCategoryFragment;
    }

    static /* synthetic */ void a(BookCategoryFragment bookCategoryFragment, CategoryBook categoryBook) {
        if (categoryBook != null) {
            bookCategoryFragment.startActivity(BookInfoActivity.a(bookCategoryFragment.getActivity(), categoryBook.getId()));
        }
    }

    static /* synthetic */ List b(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.i;
    }

    static /* synthetic */ TextView c(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.f;
    }

    static /* synthetic */ View e(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.e;
    }

    static /* synthetic */ View f(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.c;
    }

    static /* synthetic */ PullToRefreshListView g(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.a;
    }

    static /* synthetic */ BaseDownloadAdapter<CategoryBook> h(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.d;
    }

    static /* synthetic */ PullToRefreshBase.OnLastItemVisibleListener i(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.j;
    }

    public final void a() {
        this.e.setVisibility(View.VISIBLE);
        this.i.clear();
        this.d.a(this.i);
        this.h = getaqclass(true);
        this.h.b();
    }

    @NonNull
    private BaseAsyncTask<String, Void, List<CategoryBook>> getaqclass(final boolean isContinus) {
        return new BaseAsyncTask<String, Void, List<CategoryBook>>(){

            @Override
            protected List<CategoryBook> doInBackground(String... params) {
                String string = BookCategoryFragment.this.getArguments().getString("bookcategory_type");
                if (BookCategoryFragment.this.getActivity() == null) return null;
                if (BookCategoryFragment.this.getActivity().isFinishing()) {
                    return null;
                }
                String string2 = ((BookCategoryListActivity) BookCategoryFragment.this.getActivity()).f();
                String string3 = ((BookCategoryListActivity) BookCategoryFragment.this.getActivity()).g();
                String string4 = ((BookCategoryListActivity) BookCategoryFragment.this.getActivity()).b();
                ApiServiceProvider.getInstance();
                int n = isContinus ? BookCategoryFragment.b(BookCategoryFragment.this).size() : 0;
                BookListRoot bookListRoot = ApiServiceProvider.getApiService().a(string4, string, string2, string3, n, 50);
                if (bookListRoot == null) return null;
                if (bookListRoot.getBooks() == null) return null;
                return Arrays.asList(bookListRoot.getBooks());
            }
        };
    }

    public final void b(String string) {
        this.g = string;
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a();
    }

    @Override
    public View onCreateView(final LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View view = layoutInflater.inflate(R.layout.fragment_book_category, viewGroup, false);
        this.g = ((BookCategoryListActivity) this.getActivity()).g();
        this.a = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.b = this.a.getRefreshableView();
        TempUtil.addHeaderView(this.getActivity(), this.b);
        this.e = view.findViewById(R.id.pb_loading);
        this.f = (TextView) view.findViewById(R.id.empty_text);
        final LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = layoutInflater2.inflate(R.layout.loading_item, (ViewGroup)getActivity().getWindow().getDecorView(), false);
        if (Build.VERSION.SDK_INT >= 19) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.c);
        this.c.setVisibility(View.GONE);
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                int n2 = position - BookCategoryFragment.this.b.getHeaderViewsCount();
                if (n2 >= 0 && n2 < BookCategoryFragment.this.i.size()) {
                    CategoryBook categoryBook = BookCategoryFragment.this.i.get(n2);
                    BookCategoryFragment.a(BookCategoryFragment.this, categoryBook);
                }
            }
        });
        this.a.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                BookCategoryFragment.this.f.setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (BookCategoryFragment.this.h != null && BookCategoryFragment.this.h.getStatus() != AsyncTask.Status.FINISHED && !BookCategoryFragment.this.h.isCancelled()) {
                            BookCategoryFragment.this.h.cancel(true);
                        }
                        BookCategoryFragment.this.h = getaqclass(false);
                        BookCategoryFragment.this.h.b();
                    }
                }, 1000);
            }
        });
        this.d = new BaseDownloadAdapter<CategoryBook>(layoutInflater2, R.layout.list_item_ori_book) {

            @Override
            protected void a(int var1, CategoryBook categoryBook) {
                CoverView coverView = this.getTagView(0);
                coverView.setImageUrl(categoryBook.getFullCover(), R.drawable.cover_default);
                this.setText(1, categoryBook.getTitle());
                this.setText(2, categoryBook.getShortIntro());
                Resources resources = layoutInflater2.getContext().getResources();
                Object[] arrobject = new Object[]{categoryBook.getLatelyFollower()};
                this.setText(3, resources.getString(R.string.follower_count_format, arrobject));
                float f = categoryBook.getRetentionRatio();
                if (f > 0.0f) {
                    Object[] arrobject2 = new Object[]{Float.valueOf(f)};
                    this.setText(4, resources.getString(R.string.retention_ratio_format, arrobject2));
                    this.setVisibility(4, false);
                    this.setVisibility(5, false);
                } else {
                    this.setVisibility(4, true);
                    this.setVisibility(5, true);
                }
                this.setText(6, categoryBook.getAuthor());
                this.setText(7, categoryBook.getMajorCate());
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.tv_follower_count, R.id.tv_retention_ratio, R.id.tv_retention_separate, R.id.tv_author, R.id.tv_category};
            }
        };
        this.b.setAdapter(this.d);
        return view;
    }

    @Override
    public void setUserVisibleHint(boolean bl) {
        super.setUserVisibleHint(bl);
        String string = ((BookCategoryListActivity) this.getActivity()).g();
        if (bl && !this.g.equals(string)) {
            this.g = string;
            this.a();
        }
    }
}
