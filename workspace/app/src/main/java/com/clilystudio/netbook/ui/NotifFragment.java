package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.model.Account;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

import butterknife.ButterKnife;

public abstract class NotifFragment extends Fragment {

    private bw b;
    private bx c;
    private PullToRefreshListView d;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private View i;
    private NotificationAdapter j;
    private int l;
    private Account m;
    private com.clilystudio.netbook.api.b a = com.clilystudio.netbook.api.b.a();
    private List k = new ArrayList();
    private com.handmark.pulltorefresh.library.j n = new bv(this);

    static int a(NotifFragment NotifFragment1, int int2) {
        NotifFragment1.l = int2;
        return int2;
    }

    static TextView a(NotifFragment NotifFragment1) {
        return NotifFragment1.h;
    }

    static bw a(NotifFragment NotifFragment1, bw bw2) {
        NotifFragment1.b = bw2;
        return bw2;
    }

    static void a(NotifFragment NotifFragment1, boolean boolean2) {
        NotifFragment1.a(false);
    }

    static View b(NotifFragment NotifFragment1) {
        return NotifFragment1.i;
    }

    static Account c(NotifFragment NotifFragment1) {
        return NotifFragment1.m;
    }

    static PullToRefreshListView d(NotifFragment NotifFragment1) {
        return NotifFragment1.d;
    }

    static ListView e(NotifFragment NotifFragment1) {
        return NotifFragment1.e;
    }

    static NotificationAdapter f(NotifFragment NotifFragment1) {
        return NotifFragment1.j;
    }

    static com.clilystudio.netbook.api.b g(NotifFragment NotifFragment1) {
        return NotifFragment1.a;
    }

    static View h(NotifFragment NotifFragment1) {
        return NotifFragment1.g;
    }

    static View i(NotifFragment NotifFragment1) {
        return NotifFragment1.f;
    }

    static com.handmark.pulltorefresh.library.j j(NotifFragment NotifFragment1) {
        return NotifFragment1.n;
    }

    static List k(NotifFragment NotifFragment1) {
        return NotifFragment1.k;
    }

    static int l(NotifFragment NotifFragment1) {
        return NotifFragment1.l;
    }

    static void m(NotifFragment NotifFragment1) {
        NotifFragment1.i.setVisibility(0);
    }

    static bw n(NotifFragment NotifFragment1) {
        return NotifFragment1.b;
    }

    static bx o(NotifFragment NotifFragment1) {
        return NotifFragment1.c;
    }

    private void a(boolean boolean1) {
        if (g != null)
            g.setVisibility(8);
        if (h != null) {
            h.setVisibility(0);
            h.setText((CharSequence) "\u8BF7\u767B\u5F55\u540E\u67E5\u770B");
        }
        i.setVisibility(8);
        if (boolean1 && k != null && j != null) {
            k.clear();
            j.a(k);
        }
    }

    protected abstract NotifFragment$Type a();

    protected void a(ListView ListView1) {
    }

    protected abstract NotificationAdapter b();

    protected final void c() {
        bx bx1;
        String[] String_1darray2;

        c = new bx(this, (byte) 0);
        bx1 = c;
        String_1darray2 = new String[1];
        String_1darray2[0] = m.getToken();
        bx1.b(String_1darray2);
    }

    public void onActivityCreated(Bundle Bundle1) {
        super.onActivityCreated(Bundle1);
        m = am.e();
        f = LayoutInflater.from((Context) getActivity()).inflate(2130903325, null);
        e = (ListView) d.h();
        if (com.clilystudio.netbook.hpay100.a.a.i())
            e.setFooterDividersEnabled(false);
        e.addFooterView(f);
        f.setVisibility(8);
        d.setOnRefreshListener((com.handmark.pulltorefresh.library.k) new bs(this));
        e.setOnItemClickListener((AdapterView$OnItemClickListener) new bu(this));
        j = b();
        a(e);
        e.setAdapter((ListAdapter) j);
        if (m == null)
            a(false);
        else {
            bx bx2;
            String[] String_1darray3;

            c = new bx(this, (byte) 0);
            bx2 = c;
            String_1darray3 = new String[1];
            String_1darray3[0] = m.getToken();
            bx2.b(String_1darray3);
        }
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View4 = LayoutInflater1.inflate(2130903333, ViewGroup2, false);

        ButterKnife.inject(this, View4);
        d = (PullToRefreshListView) View4.findViewById(2131493099);
        g = View4.findViewById(2131493085);
        h = (TextView) View4.findViewById(2131493100);
        i = View4.findViewById(2131493086);
        i.setOnClickListener((View$OnClickListener) new br(this));
        return View4;
    }

    public void onNewMsgClickEvent$154ad029(com.clilystudio.netbook.hpay100.a.a a1) {
        if (d != null && l > 0)
            d.setRefreshing();
    }
}
