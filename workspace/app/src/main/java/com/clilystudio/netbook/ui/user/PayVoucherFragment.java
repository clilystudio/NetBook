package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class PayVoucherFragment extends Fragment {

    private String[] a;
    private String[] b;
    private ag c;
    private PullToRefreshListView d;
    private ListView e;
    private View f;
    private View g;
    private View h;
    private af i;
    private List j = new ArrayList();
    private com.handmark.pulltorefresh.library.j k = new ae(this);

    public static PayVoucherFragment a(String String1, int int2) {
        PayVoucherFragment PayVoucherFragment3 = new PayVoucherFragment();
        Bundle Bundle4 = new Bundle();

        Bundle4.putString("token_key", String1);
        Bundle4.putInt("tag_index_key", int2);
        PayVoucherFragment3.setArguments(Bundle4);
        return PayVoucherFragment3;
    }

    static af a(PayVoucherFragment PayVoucherFragment1, af af2) {
        PayVoucherFragment1.i = af2;
        return af2;
    }

    static List a(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.j;
    }

    static View b(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.h;
    }

    static af c(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.i;
    }

    static String[] d(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.a;
    }

    static View e(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.g;
    }

    static View f(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.f;
    }

    static PullToRefreshListView g(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.d;
    }

    static ag h(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.c;
    }

    static com.handmark.pulltorefresh.library.j i(PayVoucherFragment PayVoucherFragment1) {
        return PayVoucherFragment1.k;
    }

    public void onActivityCreated(Bundle Bundle1) {
        super.onActivityCreated(Bundle1);
        g.setVisibility(0);
        j.clear();
        c.a(j);
        i = new af(this);
        i.b(new String[0]);
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View5;
        LayoutInflater LayoutInflater6;

        super.onCreateView(LayoutInflater1, ViewGroup2, Bundle3);
        View5 = LayoutInflater1.inflate(2130903215, ViewGroup2, false);
        a = getActivity().getResources().getStringArray(2131361800);
        b = getActivity().getResources().getStringArray(2131361799);
        d = (PullToRefreshListView) View5.findViewById(2131493099);
        e = (ListView) d.h();
        g = View5.findViewById(2131493085);
        h = View5.findViewById(2131493444);
        ((TextView) View5.findViewById(2131493445)).setText((CharSequence) b[getArguments().getInt("tag_index_key")]);
        LayoutInflater6 = LayoutInflater.from((Context) getActivity());
        f = LayoutInflater6.inflate(2130903325, null);
        if (com.clilystudio.netbook.hpay100.a.a.i())
            e.setFooterDividersEnabled(false);
        e.addFooterView(f);
        f.setVisibility(8);
        e.setOnItemClickListener((AdapterView$OnItemClickListener) new ab(this));
        d.setOnRefreshListener((com.handmark.pulltorefresh.library.k) new ac(this));
        c = new ag(this, LayoutInflater6);
        e.setAdapter((ListAdapter) c);
        return View5;
    }
}
