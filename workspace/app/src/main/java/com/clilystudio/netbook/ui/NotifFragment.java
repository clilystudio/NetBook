package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.NotificationItem;
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
    private List<NotificationItem> k = new ArrayList<NotificationItem>();
    private b a = b.a();
    private int l;
    private Account m;
    private j n;

    public NotifFragment() {
        this.n = new bv(this);
    }

    static /* synthetic */ int a(NotifFragment notifFragment, int n) {
        notifFragment.l = n;
        return n;
    }

    static /* synthetic */ TextView a(NotifFragment notifFragment) {
        return notifFragment.h;
    }

    static /* synthetic */ bw a(NotifFragment notifFragment, bw bw2) {
        notifFragment.b = bw2;
        return bw2;
    }

    static /* synthetic */ void a(NotifFragment notifFragment, boolean bl) {
        notifFragment.a(false);
    }

    static /* synthetic */ View b(NotifFragment notifFragment) {
        return notifFragment.i;
    }

    static /* synthetic */ Account c(NotifFragment notifFragment) {
        return notifFragment.m;
    }

    static /* synthetic */ PullToRefreshListView d(NotifFragment notifFragment) {
        return notifFragment.d;
    }

    static /* synthetic */ ListView e(NotifFragment notifFragment) {
        return notifFragment.e;
    }

    static /* synthetic */ NotificationAdapter f(NotifFragment notifFragment) {
        return notifFragment.j;
    }

    static /* synthetic */ b g(NotifFragment notifFragment) {
        return notifFragment.a;
    }

    static /* synthetic */ View h(NotifFragment notifFragment) {
        return notifFragment.g;
    }

    static /* synthetic */ View i(NotifFragment notifFragment) {
        return notifFragment.f;
    }

    static /* synthetic */ j j(NotifFragment notifFragment) {
        return notifFragment.n;
    }

    static /* synthetic */ List k(NotifFragment notifFragment) {
        return notifFragment.k;
    }

    static /* synthetic */ int l(NotifFragment notifFragment) {
        return notifFragment.l;
    }

    static /* synthetic */ void m(NotifFragment notifFragment) {
        notifFragment.i.setVisibility(0);
    }

    static /* synthetic */ bw n(NotifFragment notifFragment) {
        return notifFragment.b;
    }

    static /* synthetic */ bx o(NotifFragment notifFragment) {
        return notifFragment.c;
    }

    private void a(boolean bl) {
        if (this.g != null) {
            this.g.setVisibility(8);
        }
        if (this.h != null) {
            this.h.setVisibility(0);
            this.h.setText("\u8bf7\u767b\u5f55\u540e\u67e5\u770b");
        }
        this.i.setVisibility(8);
        if (bl && this.k != null && this.j != null) {
            this.k.clear();
            this.j.a(this.k);
        }
    }

    protected abstract Type a();

    protected void a(ListView listView) {
    }

    protected abstract NotificationAdapter b();

    protected final void c() {
        bx bx2 = this.c = new bx(this, 0);
        Object[] arrobject = new String[]{this.m.getToken()};
        bx2.b(arrobject);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.m = am.e();
        this.f = LayoutInflater.from(this.getActivity()).inflate(2130903325, null);
        this.e = (ListView) this.d.h();
        if (a.i()) {
            this.e.setFooterDividersEnabled(false);
        }
        this.e.addFooterView(this.f);
        this.f.setVisibility(8);
        this.d.setOnRefreshListener(new bs(this));
        this.e.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new bu(this)));
        this.j = this.b();
        this.a(this.e);
        this.e.setAdapter(this.j);
        if (this.m == null) {
            this.a(false);
            return;
        }
        bx bx2 = this.c = new bx(this, 0);
        Object[] arrobject = new String[]{this.m.getToken()};
        bx2.b(arrobject);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(2130903333, viewGroup, false);
        ButterKnife.inject((Object) this, view);
        this.d = (PullToRefreshListView) view.findViewById(2131493099);
        this.g = view.findViewById(2131493085);
        this.h = (TextView) view.findViewById(2131493100);
        this.i = view.findViewById(2131493086);
        this.i.setOnClickListener((View.OnClickListener) ((Object) new br(this)));
        return view;
    }

    @l
    public void onNewMsgClickEvent$154ad029(a a2) {
        if (this.d != null && this.l > 0) {
            this.d.setRefreshing();
        }
    }
}
