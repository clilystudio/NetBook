package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
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
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.squareup.otto.Subscribe;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class NotifFragment extends Fragment {
    private BaseAsyncTask<String, Void, NotificationRoot> b;
    private BaseAsyncTask<String, Void, NotificationRoot> c;
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
                    NotifFragment.this.b = new BaseAsyncTask<String, Void, NotificationRoot>() {

                        @Override
                        protected NotificationRoot doInBackground(String... params) {
                            if (!this.isCancelled()) {
                                String string = "";
                                if (NotifFragment.this.k != null && NotifFragment.this.k.size() > 0) {
                                    string = NotifFragment.this.k.get(NotifFragment.this.k.size() - 1).getCreated();
                                }
                                ApiServiceProvider.getInstance();
                                if (NotifFragment.this.a() == NotifFragment.Type.IMPORTANT) {
                                    return ApiServiceProvider.getApiService().getImportNotify(params[0], string);
                                }
                                return ApiServiceProvider.getApiService().getUnimportNotify(params[0], string);
                            }
                            return null;
                        }

                        @Override
                        protected void onPostExecute(NotificationRoot notificationRoot) {
                            super.onPostExecute(notificationRoot);
                            if (NotifFragment.this.getActivity() == null) return;
                            NotifFragment.this.i.setVisibility(View.GONE);
                            NotifFragment.this.h.setVisibility(View.GONE);
                            NotifFragment.this.g.setVisibility(View.GONE);
                            NotifFragment.this.f.setVisibility(View.GONE);
                            NotifFragment.this.d.onRefreshComplete();
                            if (this.isCancelled()) return;
                            if (notificationRoot != null && notificationRoot.isOk()) {
                                int n = notificationRoot.getNotifications().length;
                                List<NotificationItem> list = Arrays.asList(notificationRoot.getNotifications());
                                NotifFragment.this.l += list.size();
                                NotifFragment.this.k.addAll(list);
                                NotifFragment.this.j.setDatas(NotifFragment.this.k);
                                if (n > 0) {
                                    if (n >= 100) {
                                        if (n != 100) return;
                                        NotifFragment.this.d.setOnLastItemVisibleListener(NotifFragment.this.n);
                                        return;
                                    }
                                } else if (NotifFragment.this.l == 0) {
                                    NotifFragment.this.h.setVisibility(View.VISIBLE);
                                    NotifFragment.this.h.setText("你还没有消息");
                                    NotifFragment.this.i.setVisibility(View.GONE);
                                }
                                NotifFragment.this.d.setOnLastItemVisibleListener(null);
                                return;
                            }
                            if (notificationRoot != null && "TOKEN_INVALID".equals(notificationRoot.getCode())) {
                                NotifFragment.this.startActivity(AuthLoginActivity.a(NotifFragment.this.getActivity()));
                                ToastUtil.showToast(NotifFragment.this.getActivity(), R.string.tweet_token_invalid);
                                return;
                            }
                            NotifFragment.this.d.setOnLastItemVisibleListener(NotifFragment.this.n);
                            NotifFragment.this.i.setVisibility(View.VISIBLE);
                        }
                    };
                    NotifFragment.this.b.b(NotifFragment.this.m.getToken());
                }
            }
        };
    }

    private void a(boolean bl) {
        if (this.g != null) {
            this.g.setVisibility(View.GONE);
        }
        if (this.h != null) {
            this.h.setVisibility(View.VISIBLE);
            this.h.setText("请登录后查看");
        }
        this.i.setVisibility(View.GONE);
        if (bl && this.k != null && this.j != null) {
            this.k.clear();
            this.j.setDatas(this.k);
        }
    }

    protected abstract Type a();

    protected void a(ListView listView) {
    }

    protected abstract NotificationAdapter b();

    protected final void c() {
        this.c = new BaseAsyncTask<String, Void, NotificationRoot>() {

            @Override
            protected NotificationRoot doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                if (NotifFragment.this.a() == NotifFragment.Type.IMPORTANT) {
                    return ApiServiceProvider.getApiService().getImportNotify(params[0], "");
                }
                return ApiServiceProvider.getApiService().getUnimportNotify(params[0], "");
            }

            @Override
            protected void onPostExecute(NotificationRoot notificationRoot) {
                super.onPostExecute(notificationRoot);
                if (NotifFragment.this.getActivity() == null) return;
                NotifFragment.this.h.setVisibility(View.GONE);
                NotifFragment.this.g.setVisibility(View.GONE);
                NotifFragment.this.f.setVisibility(View.GONE);
                NotifFragment.this.i.setVisibility(View.GONE);
                NotifFragment.this.d.onRefreshComplete();
                NotifFragment.this.d.setOnLastItemVisibleListener(NotifFragment.this.n);
                if (notificationRoot != null && notificationRoot.isOk()) {
                    NotifFragment.this.l = 0;
                    NotifFragment.this.k.clear();
                    int n = notificationRoot.getNotifications().length;
                    List<NotificationItem> list = Arrays.asList(notificationRoot.getNotifications());
                    NotifFragment.this.l += list.size();
                    NotifFragment.this.k.addAll(list);
                    NotifFragment.this.j.setDatas(NotifFragment.this.k);
                    if (n >= 100) return;
                    NotifFragment.this.d.setOnLastItemVisibleListener(null);
                    if (n != 0) return;
                    NotifFragment.this.h.setVisibility(View.VISIBLE);
                    NotifFragment.this.h.setText("没有消息");
                    NotifFragment.this.i.setVisibility(View.GONE);
                    return;
                }
                if (notificationRoot != null && "TOKEN_INVALID".equals(notificationRoot.getCode())) {
                    NotifFragment.this.startActivity(AuthLoginActivity.a(NotifFragment.this.getActivity()));
                    ToastUtil.showToast(NotifFragment.this.getActivity(), R.string.tweet_token_invalid);
                    return;
                }
                NotifFragment.this.i.setVisibility(View.VISIBLE);
            }
        };
        this.c.b(this.m.getToken());
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.m = CommonUtil.getAccount();
        this.f = LayoutInflater.from(this.getActivity()).inflate(R.layout.loading_item, (ViewGroup) getActivity().getWindow().getDecorView(), false);
        this.e = this.d.getRefreshableView();
        if (Build.VERSION.SDK_INT >= 19) {
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
                if (position < NotifFragment.this.e.getHeaderViewsCount()) {
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
    public void onNewMsgClickEvent(CommonUtil a2) {
        if (this.d != null && this.l > 0) {
            this.d.setRefreshing();
        }
    }

    public enum Type {
        IMPORTANT, UNIMPORTANT
    }
}
