package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.c;
import com.clilystudio.netbook.model.CategoryBook;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class BookCategoryFragment
        extends Fragment {
    private PullToRefreshListView a;
    private ListView b;
    private View c;
    private c d;
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

    static /* synthetic */ c h(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.d;
    }

    static /* synthetic */ j i(BookCategoryFragment bookCategoryFragment) {
        return bookCategoryFragment.j;
    }

    public final void a() {
        this.e.setVisibility(0);
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
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View view = layoutInflater.inflate(2130903209, viewGroup, false);
        this.g = ((BookCategoryListActivity) this.getActivity()).g();
        this.a = (PullToRefreshListView) view.findViewById(2131493099);
        this.b = (ListView) this.a.h();
        a.a((Context) this.getActivity(), this.b);
        this.e = view.findViewById(2131493085);
        this.f = (TextView) view.findViewById(2131493100);
        LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = layoutInflater2.inflate(2130903325, null);
        if (a.i()) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.c);
        this.c.setVisibility(8);
        this.b.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new am(this)));
        this.a.setOnRefreshListener(new an(this));
        this.d = new c(layoutInflater2);
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
