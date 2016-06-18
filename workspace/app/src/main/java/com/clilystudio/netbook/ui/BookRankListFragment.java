package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.g;
import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.widget.ScrollLoadListView;

import java.util.ArrayList;
import java.util.List;

public class BookRankListFragment extends Fragment {
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
        this.a = new g(this.getActivity().getLayoutInflater());
        ScrollLoadListView scrollLoadListView = (ScrollLoadListView) view.findViewById(R.id.content_list);
        scrollLoadListView.setAdapter(this.a);
        scrollLoadListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookRankListFragment.this.a(position);
            }
        });
        this.b = layoutInflater.inflate(R.layout.loading_item, null);
        scrollLoadListView.addFooterView(this.b);
        this.b.setVisibility(View.GONE);
        return view;
    }
}
