package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.os.AsyncTask;
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
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.W;
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
    private W<UGCBookListRoot.UGCBook> d;
    private View e;
    private TextView f;
    private com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot> g;
    private com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot> h;
    private List<UGCBookListRoot.UGCBook> i = new ArrayList<>();
    private String j;
    private PullToRefreshBase.OnLastItemVisibleListener k;

    public UGCMainListFragment() {
        this.k = new PullToRefreshBase.OnLastItemVisibleListener() {
            @Override
            public void onLastItemVisible() {
                if (UGCMainListFragment.this.g == null || UGCMainListFragment.this.g.getStatus() == AsyncTask.Status.FINISHED) {
                    UGCMainListFragment.d(UGCMainListFragment.this).setVisibility(View.VISIBLE);
                    if (UGCMainListFragment.this.h != null && UGCMainListFragment.this.h.getStatus() != AsyncTask.Status.FINISHED && !UGCMainListFragment.this.h.isCancelled()) {
                        UGCMainListFragment.this.h.cancel(true);
                    }
                    UGCMainListFragment.this.h = new com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot>() {

                        @Override
                        protected UGCBookListRoot doInBackground(String... params) {
                            if (!this.isCancelled()) {
                                com.clilystudio.netbook.api.b.a();
                                return com.clilystudio.netbook.api.b.b().a(UGCMainListFragment.this.getArguments().getString("duration"), UGCMainListFragment.this.getArguments().getString("sort"), UGCMainListFragment.h(UGCMainListFragment.this).getCount(), 20, UGCMainListFragment.this.b());
                            }
                            return null;
                        }

                        @Override
                        protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                            super.onPostExecute(uGCBookListRoot);
                            UGCMainListFragment.a(UGCMainListFragment.this).setVisibility(View.GONE);
                            UGCMainListFragment.c(UGCMainListFragment.this).setVisibility(View.GONE);
                            UGCMainListFragment.d(UGCMainListFragment.this).setVisibility(View.GONE);
                            UGCMainListFragment.e(UGCMainListFragment.this).onRefreshComplete();
                            if (this.isCancelled()) return;
                            if (uGCBookListRoot != null) {
                                if (uGCBookListRoot.isOk()) {
                                    UGCBookListRoot.UGCBook[] bookLists = uGCBookListRoot.getBookLists();
                                    int n = bookLists.length;
                                    List<UGCBookListRoot.UGCBook> list = Arrays.asList(bookLists);
                                    UGCMainListFragment.this.i.addAll(list);
                                    UGCMainListFragment.h(UGCMainListFragment.this).a(UGCMainListFragment.g(UGCMainListFragment.this));
                                    if (n > 0) {
                                        if (n >= 20) {
                                            if (n != 20) return;
                                            UGCMainListFragment.e(UGCMainListFragment.this).setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                                            return;
                                        }
                                    } else if (UGCMainListFragment.h(UGCMainListFragment.this).getCount() == 0) {
                                        UGCMainListFragment.a(UGCMainListFragment.this).setVisibility(View.VISIBLE);
                                        UGCMainListFragment.a(UGCMainListFragment.this).setText("这里还没有帖子，去发布一个吧");
                                    }
                                    UGCMainListFragment.e(UGCMainListFragment.this).setOnLastItemVisibleListener(null);
                                    return;
                                }
                                UGCMainListFragment.e(UGCMainListFragment.this).setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                                com.clilystudio.netbook.util.e.a(UGCMainListFragment.this.getActivity(), "加载失败，上拉可重新加载");
                                return;
                            }
                            UGCMainListFragment.e(UGCMainListFragment.this).setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                            com.clilystudio.netbook.util.e.a(UGCMainListFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
                        }
                    };
                    UGCMainListFragment.this.h.b();
                }
            }
        };
    }

    static /* synthetic */ TextView a(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.f;
    }

    public static UGCMainListFragment a(String string, String string2) {
        UGCMainListFragment uGCMainListFragment = new UGCMainListFragment();
        Bundle bundle = new Bundle();
        bundle.putString("sort", string);
        bundle.putString("duration", string2);
        uGCMainListFragment.setArguments(bundle);
        return uGCMainListFragment;
    }

    static /* synthetic */ View c(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.e;
    }

    static /* synthetic */ View d(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.c;
    }

    static /* synthetic */ PullToRefreshListView e(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.a;
    }

    static /* synthetic */ List g(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.i;
    }

    static /* synthetic */ W<UGCBookListRoot.UGCBook> h(UGCMainListFragment uGCMainListFragment) {
        return uGCMainListFragment.d;
    }

    public final void a() {
        this.e.setVisibility(View.VISIBLE);
        this.i.clear();
        this.d.a(this.i);
        this.g = getgclass();
        this.g.b();
    }

    @NonNull
    private com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot> getgclass() {
        return new com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot>() {

            @Override
            protected UGCBookListRoot doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                return com.clilystudio.netbook.api.b.b().a(UGCMainListFragment.this.getArguments().getString("duration"), UGCMainListFragment.this.getArguments().getString("sort"), 0, 20, UGCMainListFragment.this.b());
            }

            @Override
            protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                super.onPostExecute(uGCBookListRoot);
                UGCMainListFragment.a(UGCMainListFragment.this).setVisibility(View.GONE);
                UGCMainListFragment.c(UGCMainListFragment.this).setVisibility(View.GONE);
                UGCMainListFragment.d(UGCMainListFragment.this).setVisibility(View.GONE);
                UGCMainListFragment.e(UGCMainListFragment.this).onRefreshComplete();
                UGCMainListFragment.e(UGCMainListFragment.this).setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                if (uGCBookListRoot != null) {
                    if (uGCBookListRoot.isOk()) {
                        UGCMainListFragment.g(UGCMainListFragment.this).clear();
                        UGCBookListRoot.UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                        int n = arruGCBookListRoot$UGCBook.length;
                        List<UGCBookListRoot.UGCBook> list = Arrays.asList(arruGCBookListRoot$UGCBook);
                        UGCMainListFragment.this.i.addAll(list);
                        UGCMainListFragment.h(UGCMainListFragment.this).a(UGCMainListFragment.g(UGCMainListFragment.this));
                        if (n < 20) {
                            UGCMainListFragment.e(UGCMainListFragment.this).setOnLastItemVisibleListener(null);
                            if (n == 0) {
                                UGCMainListFragment.a(UGCMainListFragment.this).setVisibility(View.VISIBLE);
                                UGCMainListFragment.a(UGCMainListFragment.this).setText("这里还没有书单，去发布一个吧");
                            }
                        }
                        return;
                    }
                    com.clilystudio.netbook.util.e.a(UGCMainListFragment.this.getActivity(), "加载失败，请下拉刷新重试");
                    return;
                }
                com.clilystudio.netbook.util.e.a(UGCMainListFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
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
        com.clilystudio.netbook.hpay100.a.a.a(this.getActivity(), this.b);
        this.b.setOnItemClickListener(this);
        this.e = view.findViewById(R.id.pb_loading);
        this.f = (TextView) view.findViewById(R.id.empty_text);
        LayoutInflater layoutInflater2 = LayoutInflater.from(this.getActivity());
        this.c = layoutInflater2.inflate(R.layout.loading_item, (ViewGroup)getActivity().getWindow().getDecorView(), false);
        if (com.clilystudio.netbook.hpay100.a.a.i()) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.c);
        this.c.setVisibility(View.GONE);
        this.a.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                UGCMainListFragment.a(UGCMainListFragment.this).setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (UGCMainListFragment.this.g != null && UGCMainListFragment.this.g.getStatus() != AsyncTask.Status.FINISHED && !UGCMainListFragment.this.g.isCancelled()) {
                            UGCMainListFragment.this.g.cancel(true);
                        }
                        UGCMainListFragment.this.g = new com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot>() {

                            @Override
                            protected UGCBookListRoot doInBackground(String... params) {
                                com.clilystudio.netbook.api.b.a();
                                return com.clilystudio.netbook.api.b.b().a(UGCMainListFragment.this.getArguments().getString("duration"), UGCMainListFragment.this.getArguments().getString("sort"), 0, 20, UGCMainListFragment.this.b());
                            }

                            @Override
                            protected void onPostExecute(UGCBookListRoot uGCBookListRoot) {
                                super.onPostExecute(uGCBookListRoot);
                                UGCMainListFragment.a(UGCMainListFragment.this).setVisibility(View.GONE);
                                UGCMainListFragment.c(UGCMainListFragment.this).setVisibility(View.GONE);
                                UGCMainListFragment.d(UGCMainListFragment.this).setVisibility(View.GONE);
                                UGCMainListFragment.e(UGCMainListFragment.this).onRefreshComplete();
                                UGCMainListFragment.e(UGCMainListFragment.this).setOnLastItemVisibleListener(UGCMainListFragment.this.k);
                                if (uGCBookListRoot != null) {
                                    if (uGCBookListRoot.isOk()) {
                                        UGCMainListFragment.g(UGCMainListFragment.this).clear();
                                        UGCBookListRoot.UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                                        int n = arruGCBookListRoot$UGCBook.length;
                                        List<UGCBookListRoot.UGCBook> list = Arrays.asList(arruGCBookListRoot$UGCBook);
                                        UGCMainListFragment.this.i.addAll(list);
                                        UGCMainListFragment.h(UGCMainListFragment.this).a(UGCMainListFragment.g(UGCMainListFragment.this));
                                        if (n < 20) {
                                            UGCMainListFragment.e(UGCMainListFragment.this).setOnLastItemVisibleListener(null);
                                            if (n == 0) {
                                                UGCMainListFragment.a(UGCMainListFragment.this).setVisibility(View.VISIBLE);
                                                UGCMainListFragment.a(UGCMainListFragment.this).setText("这里还没有书单，去发布一个吧");
                                            }
                                        }
                                        return;
                                    }
                                    com.clilystudio.netbook.util.e.a(UGCMainListFragment.this.getActivity(), "加载失败，请下拉刷新重试");
                                    return;
                                }
                                com.clilystudio.netbook.util.e.a(UGCMainListFragment.this.getActivity(), "加载失败，请检查网络或稍后再试");
                            }
                        };
                        UGCMainListFragment.this.g.b();
                    }
                }, 1000);
            }
        });
        this.d = new W<UGCBookListRoot.UGCBook>(layoutInflater2, R.layout.list_item_ugc_book) {

            @Override
            protected void a(int var1, UGCBookListRoot.UGCBook ugcBook) {
                if (ugcBook == null) return;
                this.a(0, CoverView.class).setImageUrl(ugcBook.getFullCover(), R.drawable.cover_default);
                this.a(1, ugcBook.getTitle());
                this.a(4, ugcBook.getDesc());
                if (ugcBook.isDraft()) {
                    this.a(2, String.format(Locale.CHINA,"共%1$d本书", ugcBook.getBookCount()));
                    this.a(3, true);
                    this.a(5, com.clilystudio.netbook.util.t.e(ugcBook.getUpdated()));
                    this.a(5, false);
                    if (ugcBook.getBookCount() >= 8) {
                        this.a(6, false);
                        this.a(7, true);
                        return;
                    }
                    this.a(6, true);
                    this.a(7, false);
                    return;
                }
                this.a(2, String.format(Locale.CHINA,"共%1$d本书  |  %2$d人收藏", ugcBook.getBookCount(), ugcBook.getCollectorCount()));
                this.a(3, ugcBook.getAuthor());
                this.a(3, false);
                this.a(5, true);
                this.a(6, true);
                this.a(7, true);
            }

            @Override
            protected int[] a() {
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
