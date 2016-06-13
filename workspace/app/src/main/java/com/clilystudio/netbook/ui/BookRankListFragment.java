package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.g;
import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.widget.ScrollLoadListView;

import java.util.ArrayList;
import java.util.List;

public class BookRankListFragment
        extends Fragment {
    protected g a;
    private View b;
    private View c;
    private View d;
    private TextView e;
    private List<BookRankDetail> f = new ArrayList<BookRankDetail>(100);
    private aR g;

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
        this.g = new aR(this, 0);
        this.g.b(new String[0]);
    }

    protected final void a(int n) {
        if (n >= 0 && n < this.a.getCount()) {
            BookRankDetail bookRankDetail = (BookRankDetail) this.a.getItem(n);
            this.startActivity(BookInfoActivity.a(this.getActivity(), bookRankDetail.get_id()));
        }
    }

    protected final void b(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.c.setVisibility(8);
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                return;
            }
            case 0: {
                this.c.setVisibility(0);
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                return;
            }
            case 2: {
                this.c.setVisibility(8);
                this.d.setVisibility(0);
                this.e.setVisibility(8);
                return;
            }
            case 3:
        }
        this.c.setVisibility(8);
        this.d.setVisibility(8);
        this.e.setVisibility(0);
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
        View view = layoutInflater.inflate(2130903210, viewGroup, false);
        this.c = view.findViewById(2131493081);
        this.e = (TextView) view.findViewById(2131493080);
        this.d = view.findViewById(2131493082);
        this.d.setOnClickListener(new aP(this));
        this.a = new g(this.getActivity().getLayoutInflater());
        ScrollLoadListView scrollLoadListView = (ScrollLoadListView) view.findViewById(2131493135);
        scrollLoadListView.setAdapter(this.a);
        scrollLoadListView.setOnItemClickListener(new aQ(this));
        this.b = layoutInflater.inflate(2130903325, null);
        scrollLoadListView.addFooterView(this.b);
        this.b.setVisibility(8);
        return view;
    }
}
