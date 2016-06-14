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

import com.clilystudio.netbook.adapter.X;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

public class UGCMainListFragment extends Fragment implements AdapterView.OnItemClickListener {
    private PullToRefreshListView a;
    private ListView b;
    private View c;
    private X d;
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

    static /* synthetic */ X h(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.d;
    }

    static /* synthetic */ as i(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.h;
    }

    public final void a() {
        this.e.setVisibility(0);
        this.i.clear();
        this.d.a(this.i);
        this.g = new at(this, 0);
        this.g.b(new String[0]);
    }

    public final void a(String string) {
        this.j = string;
    }

    public final String b() {
        if (this.getActivity().getString(2131034561).equals(this.j)) {
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
        View view = layoutInflater.inflate(2130903220, viewGroup, false);
        this.a = (PullToRefreshListView) view.findViewById(2131493099);
        this.b = (ListView) this.a.h();
        a.a((Context) this.getActivity(), this.b);
        this.b.setOnItemClickListener(this);
        this.e = view.findViewById(2131493085);
        this.f = (TextView) view.findViewById(2131493100);
        LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = layoutInflater2.inflate(2130903325, null);
        if (a.i()) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.c);
        this.c.setVisibility(8);
        this.a.setOnRefreshListener(new ap(this));
        this.d = new X(layoutInflater2);
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
