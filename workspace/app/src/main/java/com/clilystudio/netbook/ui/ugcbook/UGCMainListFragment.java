package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.widget.CoverView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UGCMainListFragment extends Fragment implements AdapterView.OnItemClickListener {
    private PullToRefreshListView a;
    private ListView b;
    private View c;
    private W<UGCBookListRoot.UGCBook> d;
    private View e;
    private TextView f;
    private at g;
    private as h;
    private List<UGCBookListRoot$UGCBook> i = new ArrayList<UGCBookListRoot$UGCBook>();
    private String j;
    private j k;

    public UGCMainListFragment() {
        this.k = new ar(this);
    }

    static /* synthetic */ TextView a(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.f;
    }

    public static UGCMainListFragment a(String string, String string2) {
        UGCMainListFragment uGCMainListFragment = new UGCMainListFragment();
        Bundle bundle = new Bundle();
        bundle.putString("sort", string);
        bundle.putString("duration", string2);
        uGCMainListFragment.setArguments(bundle);
        return uGCMainListFragment;
    }

    static /* synthetic */ as a(UGCMainListFragment uGCMainListFragment, as as2) {
        uGCMainListFragment.h = as2;
        return as2;
    }

    static /* synthetic */ at a(UGCMainListFragment uGCMainListFragment, at at2) {
        uGCMainListFragment.g = at2;
        return at2;
    }

    static /* synthetic */ at b(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.g;
    }

    static /* synthetic */ View c(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.e;
    }

    static /* synthetic */ View d(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.c;
    }

    static /* synthetic */ PullToRefreshListView e(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.a;
    }

    static /* synthetic */ j f(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.k;
    }

    static /* synthetic */ List g(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.i;
    }

    static /* synthetic */ W<UGCBookListRoot.UGCBook> h(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.d;
    }

    static /* synthetic */ as i(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.h;
    }

    public final void a() {
        this.e.setVisibility(View.VISIBLE);
        this.i.clear();
        this.d.a(this.i);
        this.g = new at(this, 0);
        this.g.b(new String[0]);
    }

    public final void a(String string) {
        this.j = string;
    }

    public final String b() {
        if (this.getActivity().getString(R.string.ugc_all).equals(this.j)) {
            return "";
        }
        try {
            String string = URLEncoder.encode(this.j, "utf-8");
            return string;
        } catch (UnsupportedEncodingException var1_2) {
            var1_2.printStackTrace();
            return this.j;
        }
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        new at(this, 0).b(new String[0]);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View view = layoutInflater.inflate(R.layout.fragment_ugc_main, viewGroup, false);
        this.a = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.b = (ListView) this.a.h();
        a.a((Context) this.getActivity(), this.b);
        this.b.setOnItemClickListener(this);
        this.e = view.findViewById(R.id.pb_loading);
        this.f = (TextView) view.findViewById(R.id.empty_text);
        LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = layoutInflater2.inflate(R.layout.loading_item, null);
        if (a.i()) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.c);
        this.c.setVisibility(View.GONE);
        this.a.setOnRefreshListener(new ap(this));
        this.d = new W<UGCBookListRoot.UGCBook>(layoutInflater2, R.layout.list_item_ugc_book){

            @Override
            protected void a(int var1, UGCBookListRoot.UGCBook ugcBook) {
                if (ugcBook == null) return;
                ((CoverView) this.a(0, CoverView.class)).setImageUrl(ugcBook.getFullCover(), R.drawable.cover_default);
                this.a(1, ugcBook.getTitle());
                this.a(4, ugcBook.getDesc());
                if (ugcBook.isDraft()) {
                    Object[] arrobject = new Object[]{ugcBook.getBookCount()};
                    this.a(2, String.format("共%1$d本书", arrobject));
                    this.a(3, true);
                    this.a(5, com.clilystudio.netbook.util.t.e((Date) ugcBook.getUpdated()));
                    this.a(5, false);
                    if (ugcBook.getBookCount() >= 8) {
                        this.a(6, false);
                        this.a(7, true);
                        return;
                    }
                    this.a(6, true);
                    this.a(7, false);
                    return;
                }
                Object[] arrobject = new Object[]{ugcBook.getBookCount(), ugcBook.getCollectorCount()};
                this.a(2, String.format("共%1$d本书  |  %2$d人收藏", arrobject));
                this.a(3, ugcBook.getAuthor());
                this.a(3, false);
                this.a(5, true);
                this.a(6, true);
                this.a(7, true);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.cover, R.id.title, R.id.message_count, R.id.author, R.id.desc, R.id.updated, R.id.can_published, R.id.cannot_published};
            }
        };
        this.b.setAdapter(this.d);
        return view;
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        UGCBookListRoot$UGCBook uGCBookListRoot$UGCBook;
        int n2 = n - this.b.getHeaderViewsCount();
        if (n2 >= 0 && n2 < this.i.size() && (uGCBookListRoot$UGCBook = this.i.get(n2)) != null) {
            Intent intent = new Intent(this.getActivity(), UGCDetailActivity.class);
            intent.putExtra("book_id", uGCBookListRoot$UGCBook.get_id());
            this.startActivity(intent);
        }
    }

    @Override
    public void setUserVisibleHint(boolean bl) {
        super.setUserVisibleHint(bl);
        String string = ((UGCMainActivity) this.getActivity()).b();
        if (bl && !this.j.equals(string)) {
            this.j = string;
            this.a();
        }
    }
}
