package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.squareup.otto.Subscribe;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class NotifFragment extends Fragment {
    private com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot> b;
    private com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot> c;
    private PullToRefreshListView d;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private View i;
    private NotificationAdapter j;
    private List<NotificationItem> k = new ArrayList<>();
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
                    NotifFragment.this.b = new com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot>() {

                        @Override
                        protected NotificationRoot doInBackground(String... params) {
                            if (!this.isCancelled()) {
                                String string = "";
                                if (NotifFragment.k(NotifFragment.this) != null && NotifFragment.k(NotifFragment.this).size() > 0) {
                                    string = ((NotificationItem) NotifFragment.k(NotifFragment.this).get(-1 + NotifFragment.k(NotifFragment.this).size())).getCreated();
                                }
                                com.clilystudio.netbook.api.b.a();
                                if (NotifFragment.this.a() == NotifFragment.Type.IMPORTANT) {
                                    return com.clilystudio.netbook.api.b.b().r(params[0], string);
                                }
                                return com.clilystudio.netbook.api.b.b().s(params[0], string);
                            }
                            return null;
                        }

                        @Override
                        protected void onPostExecute(NotificationRoot notificationRoot) {
                            super.onPostExecute(notificationRoot);
                            if (NotifFragment.this.getActivity() == null) return;
                            NotifFragment.b(NotifFragment.this).setVisibility(View.GONE);
                            NotifFragment.a(NotifFragment.this).setVisibility(View.GONE);
                            NotifFragment.h(NotifFragment.this).setVisibility(View.GONE);
                            NotifFragment.i(NotifFragment.this).setVisibility(View.GONE);
                            NotifFragment.d(NotifFragment.this).onRefreshComplete();
                            if (this.isCancelled()) return;
                            if (notificationRoot != null && notificationRoot.isOk()) {
                                int n = notificationRoot.getNotifications().length;
                                List<NotificationItem> list = Arrays.asList(notificationRoot.getNotifications());
                                NotifFragment.a(NotifFragment.this, NotifFragment.l(NotifFragment.this) + list.size());
                                NotifFragment.this.k.addAll(list);
                                NotifFragment.f(NotifFragment.this).a(NotifFragment.this.k);
                                if (n > 0) {
                                    if (n >= 100) {
                                        if (n != 100) return;
                                        NotifFragment.d(NotifFragment.this).setOnLastItemVisibleListener(NotifFragment.j(NotifFragment.this));
                                        return;
                                    }
                                } else if (NotifFragment.l(NotifFragment.this) == 0) {
                                    NotifFragment.a(NotifFragment.this).setVisibility(View.VISIBLE);
                                    NotifFragment.a(NotifFragment.this).setText("你还没有消息");
                                    NotifFragment.b(NotifFragment.this).setVisibility(View.GONE);
                                }
                                NotifFragment.d(NotifFragment.this).setOnLastItemVisibleListener(null);
                                return;
                            }
                            if (notificationRoot != null && "TOKEN_INVALID".equals(notificationRoot.getCode())) {
                                NotifFragment.this.startActivity(AuthLoginActivity.a(NotifFragment.this.getActivity()));
                                com.clilystudio.netbook.util.e.a(NotifFragment.this.getActivity(), R.string.tweet_token_invalid);
                                return;
                            }
                            NotifFragment.d(NotifFragment.this).setOnLastItemVisibleListener(NotifFragment.j(NotifFragment.this));
                            NotifFragment.m(NotifFragment.this);
                        }
                    };
                    NotifFragment.this.b.b(NotifFragment.this.m.getToken());
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

    static /* synthetic */ com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot> a(NotifFragment notifFragment, com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot> bw2) {
        notifFragment.b = bw2;
        return bw2;
    }

    static /* synthetic */ void a(NotifFragment notifFragment, boolean bl) {
        notifFragment.a(bl);
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

    static /* synthetic */ com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot> n(NotifFragment notifFragment) {
        return notifFragment.b;
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
        this.c = new com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot>(){

            @Override
            protected NotificationRoot doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                if (NotifFragment.this.a() == NotifFragment.Type.IMPORTANT) {
                    return com.clilystudio.netbook.api.b.b().r(params[0], "");
                }
                return com.clilystudio.netbook.api.b.b().s(params[0], "");
            }

            @Override
            protected void onPostExecute(NotificationRoot notificationRoot) {
                super.onPostExecute(notificationRoot);
                if (NotifFragment.this.getActivity() == null) return;
                NotifFragment.a(NotifFragment.this).setVisibility(View.GONE);
                NotifFragment.h(NotifFragment.this).setVisibility(View.GONE);
                NotifFragment.i(NotifFragment.this).setVisibility(View.GONE);
                NotifFragment.b(NotifFragment.this).setVisibility(View.GONE);
                NotifFragment.d(NotifFragment.this).onRefreshComplete();
                NotifFragment.d(NotifFragment.this).setOnLastItemVisibleListener(NotifFragment.j(NotifFragment.this));
                if (notificationRoot != null && notificationRoot.isOk()) {
                    NotifFragment.a(NotifFragment.this, 0);
                    NotifFragment.k(NotifFragment.this).clear();
                    int n = notificationRoot.getNotifications().length;
                    List<NotificationItem> list = Arrays.asList(notificationRoot.getNotifications());
                    NotifFragment.a(NotifFragment.this, NotifFragment.l(NotifFragment.this) + list.size());
                    NotifFragment.this.k.addAll(list);
                    NotifFragment.f(NotifFragment.this).a(NotifFragment.this.k);
                    if (n >= 100) return;
                    NotifFragment.d(NotifFragment.this).setOnLastItemVisibleListener(null);
                    if (n != 0) return;
                    NotifFragment.a(NotifFragment.this).setVisibility(View.VISIBLE);
                    NotifFragment.a(NotifFragment.this).setText("没有消息");
                    NotifFragment.b(NotifFragment.this).setVisibility(View.GONE);
                    return;
                }
                if (notificationRoot != null && "TOKEN_INVALID".equals(notificationRoot.getCode())) {
                    NotifFragment.this.startActivity(AuthLoginActivity.a(NotifFragment.this.getActivity()));
                    com.clilystudio.netbook.util.e.a(NotifFragment.this.getActivity(), R.string.tweet_token_invalid);
                    return;
                }
                NotifFragment.m(NotifFragment.this);
            }
        };
        this.c.b(this.m.getToken());
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.m = am.e();
        this.f = LayoutInflater.from(this.getActivity()).inflate(R.layout.loading_item, (ViewGroup)getActivity().getWindow().getDecorView(), false);
        this.e = this.d.getRefreshableView();
        if (com.clilystudio.netbook.hpay100.a.a.i()) {
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
        this.c();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.notif_fragment, viewGroup, false);
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

    @Subscribe
    public void onNewMsgClickEvent(a a2) {
        if (this.d != null && this.l > 0) {
            this.d.setRefreshing();
        }
    }

    public enum Type {
        IMPORTANT, UNIMPORTANT
    }
}
