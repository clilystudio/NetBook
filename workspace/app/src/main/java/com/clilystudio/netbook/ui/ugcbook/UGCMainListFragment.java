package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.DateTimeUtil;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.CoverView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public class UGCMainListFragment extends Fragment implements AdapterView.OnItemClickListener {
    private PullToRefreshListView a;
    private ListView b;
    private View c;
    private BaseDownloadAdapter<UGCBookListRoot.UGCBook> d;
    private View e;
    private TextView f;
    private BaseAsyncTask<String, Void, UGCBookListRoot> g;
    private BaseAsyncTask<String, Void, UGCBookListRoot> h;
    private List<UGCBookListRoot.UGCBook> i = new ArrayList<>();
    private String j;
    private PullToRefreshBase.OnLastItemVisibleListener k;

    public UGCMainListFragment() {
        this.k = new PullToRefreshBase.OnLastItemVisibleListener() {
            @Override
            public void onLastItemVisible() {
                if (UGCMainListFragment.this.g == null || UGCMainListFragment.this.g.getStatus() == AsyncTask.Status.FINISHED) {
                    UGCMainListFragment.this.c.setVisibility(View.VISIBLE);
                    if (UGCMainListFragment.this.h != null && UGCMainListFragment.this.h.getStatus() != AsyncTask.Status.FINISHED && !UGCMainListFragment.this.h.isCancelled()) {
                        UGCMainListFragment.this.h.cancel(true);
                    }
                    UGCMainListFragment.this.h = new BaseAsyncTask<String, Void, UGCBookListRoot>() {

                        @Override
                        protected UGCBookListRoot doInBackground(String... params) {
                            if (!this.isCancelled()) {
                                ApiServiceProvider.getInstance();
                                return ApiServiceProvider.getApiService().a(UGCMainListFragment.this.getArguments().getString("duration"), UGCMainListFragment.this.getArguments().getString("sort"), UGCMainListFragment.this.d.getCount(), 20, UGCMainListFragment.this.b());
                            }
                            return null;
                        }

                        @Override
                        protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                            super.onPostExecute(uGCBookListRoot);
                            UGCMainListFragment.this.f.setVisibility(View.GONE);
                            UGCMainListFragment.this.e.setVisibility(View.GONE);
                            UGCMainListFragment.this.c.setVisibility(View.GONE);
                            UGCMainListFragment.this.a.onRefreshComplete();
                            if (this.isCancelled()) return;
                            if (uGCBookListRoot != null) {
                                if (uGCBookListRoot.isOk()) {
                                    UGCBookListRoot.UGCBook[] bookLists = uGCBookListRoot.getBookLists();
                                    int n = bookLists.length;
                                    List<UGCBookListRoot.UGCBook> list = Arrays.asList(bookLists);
                                    UGCMainListFragment.this.i.addAll(list);
                                    UGCMainListFragment.this.d.a(UGCMainListFragment.this.i);
                                    if (n > 0) {
                                        if (n >= 20) {
                                            if (n != 20) return;
                                            UGCMainListFragment.this.a.setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                                            return;
                                        }
                                    } else if (UGCMainListFragment.this.d.getCount() == 0) {
                                        UGCMainListFragment.this.f.setVisibility(View.VISIBLE);
                                        UGCMainListFragment.this.f.setText("这里还没有帖子，去发布一个吧");
                                    }
                                    UGCMainListFragment.this.a.setOnLastItemVisibleListener(null);
                                    return;
                                }
                                UGCMainListFragment.this.a.setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                                ToastUtil.showShortToast(UGCMainListFragment.this.getActivity(), "加载失败，上拉可重新加载");
                                return;
                            }
                            UGCMainListFragment.this.a.setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                            ToastUtil.showShortToast(UGCMainListFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
                        }
                    };
                    UGCMainListFragment.this.h.b();
                }
            }
        };
    }

    public static UGCMainListFragment a(String string, String string2) {
        UGCMainListFragment uGCMainListFragment = new UGCMainListFragment();
        Bundle bundle = new Bundle();
        bundle.putString("sort", string);
        bundle.putString("duration", string2);
        uGCMainListFragment.setArguments(bundle);
        return uGCMainListFragment;
    }

    public final void a() {
        this.e.setVisibility(View.VISIBLE);
        this.i.clear();
        this.d.a(this.i);
        this.g = getgclass();
        this.g.b();
    }

    @NonNull
    private BaseAsyncTask<String, Void, UGCBookListRoot> getgclass() {
        return new BaseAsyncTask<String, Void, UGCBookListRoot>() {

            @Override
            protected UGCBookListRoot doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().a(UGCMainListFragment.this.getArguments().getString("duration"), UGCMainListFragment.this.getArguments().getString("sort"), 0, 20, UGCMainListFragment.this.b());
            }

            @Override
            protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                super.onPostExecute(uGCBookListRoot);
                UGCMainListFragment.this.f.setVisibility(View.GONE);
                UGCMainListFragment.this.e.setVisibility(View.GONE);
                UGCMainListFragment.this.c.setVisibility(View.GONE);
                UGCMainListFragment.this.a.onRefreshComplete();
                UGCMainListFragment.this.a.setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                if (uGCBookListRoot != null) {
                    if (uGCBookListRoot.isOk()) {
                        UGCMainListFragment.this.i.clear();
                        UGCBookListRoot.UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                        int n = arruGCBookListRoot$UGCBook.length;
                        List<UGCBookListRoot.UGCBook> list = Arrays.asList(arruGCBookListRoot$UGCBook);
                        UGCMainListFragment.this.i.addAll(list);
                        UGCMainListFragment.this.d.a(UGCMainListFragment.this.i);
                        if (n < 20) {
                            UGCMainListFragment.this.a.setOnLastItemVisibleListener(null);
                            if (n == 0) {
                                UGCMainListFragment.this.f.setVisibility(View.VISIBLE);
                                UGCMainListFragment.this.f.setText("这里还没有书单，去发布一个吧");
                            }
                        }
                        return;
                    }
                    ToastUtil.showShortToast(UGCMainListFragment.this.getActivity(), "加载失败，请下拉刷新重试");
                    return;
                }
                ToastUtil.showShortToast(UGCMainListFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
            }
        };
    }

    public final void a(String string) {
        this.j = string;
    }

    public final String b() {
        if (this.getActivity().getString(R.string.ugc_all).equals(this.j)) {
            return "";
        }
        try {
            return URLEncoder.encode(this.j, "utf-8");
        } catch (UnsupportedEncodingException var1_2) {
            var1_2.printStackTrace();
            return this.j;
        }
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        getgclass().b();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View view = layoutInflater.inflate(R.layout.fragment_ugc_main, viewGroup, false);
        this.a = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.b = this.a.getRefreshableView();
        CommonUtil.addHeaderView(this.getActivity(), this.b);
        this.b.setOnItemClickListener(this);
        this.e = view.findViewById(R.id.pb_loading);
        this.f = (TextView) view.findViewById(R.id.empty_text);
        LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = layoutInflater2.inflate(R.layout.loading_item, (ViewGroup)getActivity().getWindow().getDecorView(), false);
        if (Build.VERSION.SDK_INT >= 19) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.c);
        this.c.setVisibility(View.GONE);
        this.a.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                UGCMainListFragment.this.f.setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (UGCMainListFragment.this.g != null && UGCMainListFragment.this.g.getStatus() != AsyncTask.Status.FINISHED && !UGCMainListFragment.this.g.isCancelled()) {
                            UGCMainListFragment.this.g.cancel(true);
                        }
                        UGCMainListFragment.this.g = new BaseAsyncTask<String, Void, UGCBookListRoot>() {

                            @Override
                            protected UGCBookListRoot doInBackground(String... params) {
                                ApiServiceProvider.getInstance();
                                return ApiServiceProvider.getApiService().a(UGCMainListFragment.this.getArguments().getString("duration"), UGCMainListFragment.this.getArguments().getString("sort"), 0, 20, UGCMainListFragment.this.b());
                            }

                            @Override
                            protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                                super.onPostExecute(uGCBookListRoot);
                                UGCMainListFragment.this.f.setVisibility(View.GONE);
                                UGCMainListFragment.this.e.setVisibility(View.GONE);
                                UGCMainListFragment.this.c.setVisibility(View.GONE);
                                UGCMainListFragment.this.a.onRefreshComplete();
                                UGCMainListFragment.this.a.setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                                if (uGCBookListRoot != null) {
                                    if (uGCBookListRoot.isOk()) {
                                        UGCMainListFragment.this.i.clear();
                                        UGCBookListRoot.UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                                        int n = arruGCBookListRoot$UGCBook.length;
                                        List<UGCBookListRoot.UGCBook> list = Arrays.asList(arruGCBookListRoot$UGCBook);
                                        UGCMainListFragment.this.i.addAll(list);
                                        UGCMainListFragment.this.d.a(UGCMainListFragment.this.i);
                                        if (n < 20) {
                                            UGCMainListFragment.this.a.setOnLastItemVisibleListener(null);
                                            if (n == 0) {
                                                UGCMainListFragment.this.f.setVisibility(View.VISIBLE);
                                                UGCMainListFragment.this.f.setText("这里还没有书单，去发布一个吧");
                                            }
                                        }
                                        return;
                                    }
                                    ToastUtil.showShortToast(UGCMainListFragment.this.getActivity(), "加载失败，请下拉刷新重试");
                                    return;
                                }
                                ToastUtil.showShortToast(UGCMainListFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
                            }
                        };
                        UGCMainListFragment.this.g.b();
                    }
                }, 1000);
            }
        });
        this.d = new BaseDownloadAdapter<UGCBookListRoot.UGCBook>(layoutInflater2, R.layout.list_item_ugc_book) {

            @Override
            protected void a(int var1, UGCBookListRoot.UGCBook ugcBook) {
                if (ugcBook == null) return;
                CoverView coverView = this.getTagView(0);
                coverView.setImageUrl(ugcBook.getFullCover(), R.drawable.cover_default);
                this.setText(1, ugcBook.getTitle());
                this.setText(4, ugcBook.getDesc());
                if (ugcBook.isDraft()) {
                    this.setText(2, String.format(Locale.CHINA,"共%1$d本书", ugcBook.getBookCount()));
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
                this.setText(2, String.format(Locale.CHINA,"共%1$d本书  |  %2$d人收藏", ugcBook.getBookCount(), ugcBook.getCollectorCount()));
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
        this.b.setAdapter(this.d);
        return view;
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        UGCBookListRoot.UGCBook uGCBookListRoot$UGCBook;
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
