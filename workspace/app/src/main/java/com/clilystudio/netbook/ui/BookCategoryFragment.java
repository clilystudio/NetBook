package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.CategoryBook;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class BookCategoryFragment extends Fragment {
    private PullToRefreshListView a;
    private ListView b;
    private View c;
    private W<CategoryBook> d;
    private View e;
    private TextView f;
    private String g;
    private aq h;
    private List<CategoryBook> i = new ArrayList<CategoryBook>();
    private j j;

    public BookCategoryFragment() {
        this.j = new ap(this);
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

    static /* synthetic */ aq a(BookCategoryFragment bookCategoryFragment, aq aq2) {
        bookCategoryFragment.h = aq2;
        return aq2;
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

    static /* synthetic */ aq d(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.h;
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

    static /* synthetic */ W<CategoryBook> h(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.d;
    }

    static /* synthetic */ j i(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.j;
    }

    public final void a() {
        this.e.setVisibility(View.VISIBLE);
        this.i.clear();
        this.d.a(this.i);
        this.h = new aq(this);
        this.h.b((Object[]) new String[0]);
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
        this.b = (ListView) this.a.h();
        a.a((Context) this.getActivity(), this.b);
        this.e = view.findViewById(R.id.pb_loading);
        this.f = (TextView) view.findViewById(R.id.empty_text);
        final LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = layoutInflater2.inflate(R.layout.loading_item, null);
        if (a.i()) {
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
                        BookCategoryFragment.a(BookCategoryFragment.this, new aq(BookCategoryFragment.this, false));
                        BookCategoryFragment.this.h.b(new String[0]);
                    }
                }, 1000);
            }
        });
        this.d = new W<CategoryBook>(layoutInflater2, R.layout.list_item_ori_book) {

            @Override
            protected void a(int var1, CategoryBook categoryBook) {
                ((CoverView) this.a(0, CoverView.class)).setImageUrl(categoryBook.getFullCover(), R.drawable.cover_default);
                this.a(1, categoryBook.getTitle());
                this.a(2, categoryBook.getShortIntro());
                Resources resources = layoutInflater2.getContext().getResources();
                Object[] arrobject = new Object[]{categoryBook.getLatelyFollower()};
                this.a(3, resources.getString(R.string.follower_count_format, arrobject));
                float f = categoryBook.getRetentionRatio();
                if (f > 0.0f) {
                    Object[] arrobject2 = new Object[]{Float.valueOf(f)};
                    this.a(4, resources.getString(R.string.retention_ratio_format, arrobject2));
                    this.a(4, false);
                    this.a(5, false);
                } else {
                    this.a(4, true);
                    this.a(5, true);
                }
                this.a(6, categoryBook.getAuthor());
                this.a(7, categoryBook.getMajorCate());
            }

            @Override
            protected int[] a() {
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
