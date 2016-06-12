package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.X;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.W;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public abstract class AbsUGCListFragment extends Fragment implements AdapterView$OnItemClickListener {

    protected PullToRefreshListView a;
    protected ListView b;
    protected X c;
    protected View d;
    protected View e;
    protected e g;
    protected d h;
    protected TextView j;
    protected Handler f = new Handler();
    protected List i = new ArrayList();
    private TextView k;
    private String l = "\u5171%d\u4E2A\u4E66\u5355";
    private com.handmark.pulltorefresh.library.j m = new a(this);

    static com.handmark.pulltorefresh.library.j a(AbsUGCListFragment AbsUGCListFragment1) {
        return AbsUGCListFragment1.m;
    }

    static void a(AbsUGCListFragment AbsUGCListFragment1, int int2) {
        TextView TextView3 = AbsUGCListFragment1.k;
        String String4 = AbsUGCListFragment1.l;
        Object[] Object_1darray5 = new Object[1];

        Object_1darray5[0] = Integer.valueOf(int2);
        TextView3.setText((CharSequence) String.format(String4, Object_1darray5));
        if (int2 == 0)
            AbsUGCListFragment1.k.setVisibility(8);
        else
            AbsUGCListFragment1.k.setVisibility(0);
    }

    protected abstract UGCBookListRoot a(Account Account1, int int2);

    public final void a() {
        new e(this, (byte) 0).b(new String[0]);
    }

    public final W b() {
        return (W) c;
    }

    protected abstract String c();

    public void onActivityCreated(Bundle Bundle1) {
        super.onActivityCreated(Bundle1);
        a();
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View5;
        View View6;

        super.onCreateView(LayoutInflater1, ViewGroup2, Bundle3);
        View5 = LayoutInflater1.inflate(2130903207, ViewGroup2, false);
        a = (PullToRefreshListView) View5.findViewById(2131493099);
        b = (ListView) a.h();
        b.setOnItemClickListener(this);
        com.clilystudio.netbook.hpay100.a.a.a((Context) getActivity(), b);
        View6 = LayoutInflater1.inflate(2130903330, (ViewGroup) b, false);
        k = (TextView) View6.findViewById(2131492905);
        k.setVisibility(8);
        b.addHeaderView(View6, null, false);
        d = View5.findViewById(2131493085);
        j = (TextView) View5.findViewById(2131493100);
        e = LayoutInflater.from((Context) getActivity()).inflate(2130903325, null);
        if (com.clilystudio.netbook.hpay100.a.a.i())
            b.setFooterDividersEnabled(false);
        b.addFooterView(e);
        e.setVisibility(8);
        a.setOnRefreshListener((com.handmark.pulltorefresh.library.k) new b(this));
        c = new X(getActivity().getLayoutInflater());
        b.setAdapter((ListAdapter) c);
        return View5;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
    }
}
