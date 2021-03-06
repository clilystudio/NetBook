package com.clilystudio.netbook.ui.ugcbook;

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
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.DateTimeUtil;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.CoverView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public abstract class AbsUGCListFragment extends Fragment implements AdapterView.OnItemClickListener {
    protected PullToRefreshListView a;
    protected ListView b;
    protected BaseDownloadAdapter<UGCBookListRoot.UGCBook> c;
    protected View d;
    protected View e;
    protected Handler f = new Handler();
    protected BaseAsyncTask<String, Void, UGCBookListRoot> g;
    protected BaseAsyncTask<String, Void, UGCBookListRoot> h;
    protected List<UGCBookListRoot.UGCBook> i = new ArrayList<>();
    protected TextView j;
    private TextView k;
    private String l = "共%d个书单";
    private PullToRefreshBase.OnLastItemVisibleListener m;

    public AbsUGCListFragment() {
        this.m = new PullToRefreshBase.OnLastItemVisibleListener() {

            @Override
            public void onLastItemVisible() {
                if (AbsUGCListFragment.this.h == null || AbsUGCListFragment.this.h.getStatus() == AsyncTask.Status.FINISHED) {
                    AbsUGCListFragment.this.e.setVisibility(View.VISIBLE);
                    if (AbsUGCListFragment.this.g != null && AbsUGCListFragment.this.g.getStatus() != AsyncTask.Status.FINISHED && !AbsUGCListFragment.this.g.isCancelled()) {
                        AbsUGCListFragment.this.g.cancel(true);
                    }
                    AbsUGCListFragment.this.h = new BaseAsyncTask<String, Void, UGCBookListRoot>() {

                        @Override
                        protected UGCBookListRoot doInBackground(String... params) {
                            if (this.isCancelled()) return null;
                            Account account = CommonUtil.checkLogin(AbsUGCListFragment.this.getActivity());
                            if (account == null) return null;
                            return AbsUGCListFragment.this.a(account, AbsUGCListFragment.this.c.getCount());
                        }

                        @Override
                        protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                            super.onPostExecute(uGCBookListRoot);
                            AbsUGCListFragment.this.j.setVisibility(View.GONE);
                            AbsUGCListFragment.this.d.setVisibility(View.GONE);
                            AbsUGCListFragment.this.e.setVisibility(View.GONE);
                            AbsUGCListFragment.this.a.onRefreshComplete();
                            if (this.isCancelled()) return;
                            if (uGCBookListRoot != null) {
                                if (uGCBookListRoot.isOk()) {
                                    UGCBookListRoot.UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                                    int n = arruGCBookListRoot$UGCBook.length;
                                    List<UGCBookListRoot.UGCBook> list = Arrays.asList(arruGCBookListRoot$UGCBook);
                                    AbsUGCListFragment.this.i.addAll(list);
                                    AbsUGCListFragment.this.c.a(AbsUGCListFragment.this.i);
                                    AbsUGCListFragment.a(AbsUGCListFragment.this, n);
                                    if (n > 0) {
                                        if (n >= 10) {
                                            if (n != 10) return;
                                            AbsUGCListFragment.this.a.setOnLastItemVisibleListener(AbsUGCListFragment.this.m);
                                            return;
                                        }
                                    } else if (AbsUGCListFragment.this.c.getCount() == 0) {
                                        AbsUGCListFragment.this.j.setVisibility(View.VISIBLE);
                                        AbsUGCListFragment.this.j.setText(AbsUGCListFragment.this.c());
                                    }
                                    AbsUGCListFragment.this.a.setOnLastItemVisibleListener(null);
                                    return;
                                }
                                AbsUGCListFragment.this.a.setOnLastItemVisibleListener(AbsUGCListFragment.this.m);
                                ToastUtil.showShortToast(AbsUGCListFragment.this.getActivity(), "加载失败，上拉可重新加载");
                                return;
                            }
                            AbsUGCListFragment.this.a.setOnLastItemVisibleListener(AbsUGCListFragment.this.m);
                            ToastUtil.showShortToast(AbsUGCListFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
                        }
                    };
                    AbsUGCListFragment.this.h.b();
                }
            }
        };
    }

    static void a(AbsUGCListFragment absUGCListFragment, int n) {
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
        new BaseAsyncTask<String, Void, UGCBookListRoot>() {

            @Override
            protected UGCBookListRoot doInBackground(String... params) {
                Account account = CommonUtil.checkLogin(AbsUGCListFragment.this.getActivity());
                if (account == null) return null;
                return AbsUGCListFragment.this.a(account, 0);
            }

            @Override
            protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                super.onPostExecute(uGCBookListRoot);
                AbsUGCListFragment.this.j.setVisibility(View.GONE);
                AbsUGCListFragment.this.d.setVisibility(View.GONE);
                AbsUGCListFragment.this.e.setVisibility(View.GONE);
                AbsUGCListFragment.this.a.onRefreshComplete();
                AbsUGCListFragment.this.a.setOnLastItemVisibleListener(AbsUGCListFragment.this.m);
                if (uGCBookListRoot != null) {
                    if (uGCBookListRoot.isOk()) {
                        AbsUGCListFragment.this.i.clear();
                        UGCBookListRoot.UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                        int n = arruGCBookListRoot$UGCBook.length;
                        for (UGCBookListRoot.UGCBook uGCBookListRoot$UGCBook : Arrays.asList(arruGCBookListRoot$UGCBook)) {
                            if (uGCBookListRoot$UGCBook == null) continue;
                            AbsUGCListFragment.this.i.add(uGCBookListRoot$UGCBook);
                        }
                        AbsUGCListFragment.this.c.a(AbsUGCListFragment.this.i);
                        AbsUGCListFragment.a(AbsUGCListFragment.this, n);
                        if (n < 10) {
                            AbsUGCListFragment.this.a.setOnLastItemVisibleListener(null);
                            if (n == 0) {
                                AbsUGCListFragment.this.j.setVisibility(View.VISIBLE);
                                AbsUGCListFragment.this.j.setText(AbsUGCListFragment.this.c());
                            }
                        }
                        return;
                    }
                    ToastUtil.showShortToast(AbsUGCListFragment.this.getActivity(), "加载失败，请下拉刷新重试");
                    return;
                }
                ToastUtil.showShortToast(AbsUGCListFragment.this.getActivity(), "加载失败，请检查网络或下拉刷新重试");
            }
        }.b();
    }

    public final BaseDownloadAdapter b() {
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
        View view = layoutInflater.inflate(R.layout.fragment_abs_ugc_list, viewGroup, false);
        this.a = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.b = this.a.getRefreshableView();
        this.b.setOnItemClickListener(this);
        CommonUtil.addHeaderView(this.getActivity(), this.b);
        View view2 = layoutInflater.inflate(R.layout.my_ugc_header_label, this.b, false);
        this.k = (TextView) view2.findViewById(R.id.content);
        this.k.setVisibility(View.GONE);
        this.b.addHeaderView(view2, null, false);
        this.d = view.findViewById(R.id.pb_loading);
        this.j = (TextView) view.findViewById(R.id.empty_text);
        this.e = LayoutInflater.from(this.getActivity()).inflate(R.layout.loading_item, (ViewGroup) getActivity().getWindow().getDecorView(), false);
        if (Build.VERSION.SDK_INT >= 19) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.e);
        this.e.setVisibility(View.GONE);
        this.a.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                AbsUGCListFragment.this.j.setVisibility(View.GONE);
                AbsUGCListFragment.this.f.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (AbsUGCListFragment.this.g != null && AbsUGCListFragment.this.g.getStatus() != AsyncTask.Status.FINISHED && !AbsUGCListFragment.this.g.isCancelled()) {
                            AbsUGCListFragment.this.g.cancel(true);
                        }
                        AbsUGCListFragment.this.g = new BaseAsyncTask<String, Void, UGCBookListRoot>() {

                            @Override
                            protected UGCBookListRoot doInBackground(String... params) {
                                Account account = CommonUtil.checkLogin(AbsUGCListFragment.this.getActivity());
                                if (account == null) return null;
                                return AbsUGCListFragment.this.a(account, 0);
                            }

                            @Override
                            protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                                super.onPostExecute(uGCBookListRoot);
                                AbsUGCListFragment.this.j.setVisibility(View.GONE);
                                AbsUGCListFragment.this.d.setVisibility(View.GONE);
                                AbsUGCListFragment.this.e.setVisibility(View.GONE);
                                AbsUGCListFragment.this.a.onRefreshComplete();
                                AbsUGCListFragment.this.a.setOnLastItemVisibleListener(AbsUGCListFragment.this.m);
                                if (uGCBookListRoot != null) {
                                    if (uGCBookListRoot.isOk()) {
                                        AbsUGCListFragment.this.i.clear();
                                        UGCBookListRoot.UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                                        int n = arruGCBookListRoot$UGCBook.length;
                                        for (UGCBookListRoot.UGCBook uGCBookListRoot$UGCBook : Arrays.asList(arruGCBookListRoot$UGCBook)) {
                                            if (uGCBookListRoot$UGCBook == null) continue;
                                            AbsUGCListFragment.this.i.add(uGCBookListRoot$UGCBook);
                                        }
                                        AbsUGCListFragment.this.c.a(AbsUGCListFragment.this.i);
                                        AbsUGCListFragment.a(AbsUGCListFragment.this, n);
                                        if (n < 10) {
                                            AbsUGCListFragment.this.a.setOnLastItemVisibleListener(null);
                                            if (n == 0) {
                                                AbsUGCListFragment.this.j.setVisibility(View.VISIBLE);
                                                AbsUGCListFragment.this.j.setText(AbsUGCListFragment.this.c());
                                            }
                                        }
                                        return;
                                    }
                                    ToastUtil.showShortToast(AbsUGCListFragment.this.getActivity(), "加载失败，请下拉刷新重试");
                                    return;
                                }
                                ToastUtil.showShortToast(AbsUGCListFragment.this.getActivity(), "加载失败，请检查网络或下拉刷新重试");
                            }
                        };
                        AbsUGCListFragment.this.g.b();
                    }
                }, 1000);
            }
        });
        this.c = new BaseDownloadAdapter<UGCBookListRoot.UGCBook>(getActivity().getLayoutInflater(), R.layout.list_item_ugc_book) {

            @Override
            protected void a(int var1, UGCBookListRoot.UGCBook ugcBook) {
                if (ugcBook == null) return;
                CoverView coverView = this.getTagView(0);
                coverView.setImageUrl(ugcBook.getFullCover(), R.drawable.cover_default);
                this.setText(1, ugcBook.getTitle());
                this.setText(4, ugcBook.getDesc());
                if (ugcBook.isDraft()) {
                    this.setText(2, String.format(Locale.CHINA, "共%1$d本书", ugcBook.getBookCount()));
                    this.setVisibility(3, true);
                    this.setText(5, DateTimeUtil.e(ugcBook.getUpdated()));
                    this.setVisibility(5, false);
                    if (ugcBook.getBookCount() >= 8) {
                        this.setVisibility(6, false);
                        this.setVisibility(7, true);
                        return;
                    }
                    this.setVisibility(6, true);
                    this.setVisibility(7, false);
                    return;
                }
                Object[] arrobject = new Object[]{ugcBook.getBookCount(), ugcBook.getCollectorCount()};
                this.setText(2, String.format(Locale.CHINA, "共%1$d本书  |  %2$d人收藏", arrobject));
                this.setText(3, ugcBook.getAuthor());
                this.setVisibility(3, false);
                this.setVisibility(5, true);
                this.setVisibility(6, true);
                this.setVisibility(7, true);
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.cover, R.id.title, R.id.message_count, R.id.author, R.id.desc, R.id.updated, R.id.can_published, R.id.cannot_published};
            }
        };
        this.b.setAdapter(this.c);
        return view;
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        UGCBookListRoot.UGCBook ugcBook;
        int n2 = n - this.b.getHeaderViewsCount();
        if (n2 >= 0 && n2 < this.i.size() && (ugcBook = this.i.get(n2)) != null) {
            Intent intent = new Intent(this.getActivity(), UGCDetailActivity.class);
            intent.putExtra("book_id", ugcBook.get_id());
            this.startActivity(intent);
        }
    }
}
