package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;

import android.os.Handler;
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
import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
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
    private PullToRefreshBase.OnLastItemVisibleListener n;

    public NotifFragment() {
        this.n = new PullToRefreshBase.OnLastItemVisibleListener() {
            @Override
            public void onLastItemVisible() {
                if (NotifFragment.this.b == null || NotifFragment.this.b.getStatus() == AsyncTask.Status.FINISHED) {
                    NotifFragment.this.f.setVisibility(View.VISIBLE);
                    if (NotifFragment.this.c != null && NotifFragment.this.c.getStatus() != AsyncTask.Status.FINISHED && !NotifFragment.this.c.isCancelled()) {
                        NotifFragment.this.c.cancel(true);
                    }
                    NotifFragment.a(NotifFragment.this, new bw(NotifFragment.this, (byte)0));
                    String[] arrstring = new String[]{NotifFragment.this.m.getToken()};
                    NotifFragment.this.b.b(arrstring);
                }
           }
        };
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

    static /* synthetic */ PullToRefreshBase.OnLastItemVisibleListener j(NotifFragment notifFragment) {
        return notifFragment.n;
    }

    static /* synthetic */ List k(NotifFragment notifFragment) {
        return notifFragment.k;
    }

    static /* synthetic */ int l(NotifFragment notifFragment) {
        return notifFragment.l;
    }

    static /* synthetic */ void m(NotifFragment notifFragment) {
        notifFragment.i.setVisibility(View.VISIBLE);
    }

    static /* synthetic */ bw n(NotifFragment notifFragment) {
        return notifFragment.b;
    }

    static /* synthetic */ bx o(NotifFragment notifFragment) {
        return notifFragment.c;
    }

    private void a(boolean bl) {
        if (this.g != null) {
            this.g.setVisibility(View.GONE);
        }
        if (this.h != null) {
            this.h.setVisibility(View.VISIBLE);
            this.h.setText("\u8bf7\u767b\u5f55\u540e\u67e5\u770b");
        }
        this.i.setVisibility(View.GONE);
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
        this.f = LayoutInflater.from(this.getActivity()).inflate(R.layout.loading_item, null);
        this.e = (ListView) this.d.h();
        if (a.i()) {
            this.e.setFooterDividersEnabled(false);
        }
        this.e.addFooterView(this.f);
        this.f.setVisibility(View.GONE);
        this.d.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                NotifFragment.this.h.setVisibility(View.GONE);
                NotifFragment.this.i.setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (NotifFragment.this.m == null) {
                            NotifFragment.this.a(false);
                            NotifFragment.this.d.setRefreshing();
                            return;
                        }
                        NotifFragment.this.c();
                    }
                }, 1000);
            }
        });
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                if (position < NotifFragment.e(NotifFragment.this).getHeaderViewsCount()) {
                    return;
                }
                int n2 = position - NotifFragment.this.e.getHeaderViewsCount();
                int n3 = NotifFragment.this.j.getItemViewType(n2);
                if (n3 == 0) return;
                if (n3 == 2) {
                    return;
                }
                boolean bl = false;
                if (bl) return;
                Intent intent = NotifBinderFactory.create(NotifFragment.this.j.a(n2)).getIntent(NotifFragment.this.getActivity());
                if (intent == null) return;
                NotifFragment.this.startActivity(intent);
            }
        });
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
        View view = layoutInflater.inflate(R.layout.notif_fragment, viewGroup, false);
        ButterKnife.inject((Object) this, view);
        this.d = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.g = view.findViewById(R.id.pb_loading);
        this.h = (TextView) view.findViewById(R.id.empty_text);
        this.i = view.findViewById(R.id.load_error_hint_btn);
        this.i.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                NotifFragment.this.c();
            }
        });
        return view;
    }

    @l
    public void onNewMsgClickEvent$154ad029(a a2) {
        if (this.d != null && this.l > 0) {
            this.d.setRefreshing();
        }
    }

    public enum Type {
        IMPORTANT,UNIMPORTANT;
    }
}
