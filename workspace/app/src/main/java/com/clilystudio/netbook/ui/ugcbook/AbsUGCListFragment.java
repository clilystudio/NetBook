package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.X;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.W;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public abstract class AbsUGCListFragment extends Fragment implements AdapterView.OnItemClickListener {
    protected PullToRefreshListView a;
    protected ListView b;
    protected X c;
    protected View d;
    protected View e;
    protected Handler f = new Handler();
    protected e g;
    protected d h;
    protected List<UGCBookListRoot$UGCBook> i = new ArrayList<UGCBookListRoot$UGCBook>();
    protected TextView j;
    private TextView k;
    private String l = "\u5171%d\u4e2a\u4e66\u5355";
    private j m;

    public AbsUGCListFragment() {
        this.m = new a(this);
    }

    static /* synthetic */ j a(AbsUGCListFragment absUGCListFragment) {
        return absUGCListFragment.m;
    }

    static /* synthetic */ void a(AbsUGCListFragment absUGCListFragment, int n) {
        TextView textView = absUGCListFragment.k;
        String string = absUGCListFragment.l;
        Object[] arrobject = new Object[]{n};
        textView.setText(String.format(string, arrobject));
        if (n == 0) {
            absUGCListFragment.k.setVisibility(View.GONE);
            return;
        }
        absUGCListFragment.k.setVisibility(View.VISIBLE);
    }

    protected abstract UGCBookListRoot a(Account var1, int var2);

    public final void a() {
        new e(this, 0).b((Object[]) new String[0]);
    }

    public final W b() {
        return this.c;
    }

    protected abstract String c();

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View view = layoutInflater.inflate(2130903207, viewGroup, false);
        this.a = (PullToRefreshListView) view.findViewById(2131493099);
        this.b = (ListView) this.a.h();
        this.b.setOnItemClickListener(this);
        com.clilystudio.netbook.hpay100.a.a.a((Context) this.getActivity(), this.b);
        View view2 = layoutInflater.inflate(2130903330, (ViewGroup) this.b, false);
        this.k = (TextView) view2.findViewById(2131492905);
        this.k.setVisibility(View.GONE);
        this.b.addHeaderView(view2, null, false);
        this.d = view.findViewById(2131493085);
        this.j = (TextView) view.findViewById(2131493100);
        this.e = LayoutInflater.from(this.getActivity()).inflate(2130903325, null);
        if (com.clilystudio.netbook.hpay100.a.a.i()) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.e);
        this.e.setVisibility(View.GONE);
        this.a.setOnRefreshListener(new b(this));
        this.c = new X(this.getActivity().getLayoutInflater());
        this.b.setAdapter(this.c);
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
}
