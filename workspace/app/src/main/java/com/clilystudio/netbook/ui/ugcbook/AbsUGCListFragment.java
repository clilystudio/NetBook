package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.Intent;
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
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public abstract class AbsUGCListFragment extends Fragment implements AdapterView.OnItemClickListener {
    protected PullToRefreshListView a;
    protected ListView b;
    protected W<UGCBookListRoot.UGCBook> c;
    protected View d;
    protected View e;
    protected Handler f = new Handler();
    protected e g;
    protected d h;
    protected List<UGCBookListRoot.UGCBook> i = new ArrayList<UGCBookListRoot.UGCBook>();
    protected TextView j;
    private TextView k;
    private String l = "\u5171%d\u4e2a\u4e66\u5355";
    private j m;

    public AbsUGCListFragment() {
        this.m = new a(this);
    }

    static /* synthetic */ j a(AbsUGCListFragment absUGCListFragment) {
        return absUGCListFragment.m;
    }

    static /* synthetic */ void a(AbsUGCListFragment absUGCListFragment, int n) {
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
        new e(this, 0).b((Object[]) new String[0]);
    }

    public final W b() {
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
        this.b = (ListView) this.a.h();
        this.b.setOnItemClickListener(this);
        com.clilystudio.netbook.hpay100.a.a.a((Context) this.getActivity(), this.b);
        View view2 = layoutInflater.inflate(R.layout.my_ugc_header_label, (ViewGroup) this.b, false);
        this.k = (TextView) view2.findViewById(R.id.content);
        this.k.setVisibility(View.GONE);
        this.b.addHeaderView(view2, null, false);
        this.d = view.findViewById(R.id.pb_loading);
        this.j = (TextView) view.findViewById(R.id.empty_text);
        this.e = LayoutInflater.from(this.getActivity()).inflate(R.layout.loading_item, null);
        if (com.clilystudio.netbook.hpay100.a.a.i()) {
            this.b.setFooterDividersEnabled(false);
        }
        this.b.addFooterView(this.e);
        this.e.setVisibility(View.GONE);
        this.a.setOnRefreshListener(new b(this));
        this.c = new W<UGCBookListRoot.UGCBook>(getActivity().getLayoutInflater(), R.layout.list_item_ugc_book){

            @Override
            protected void a(int var1, UGCBookListRoot.UGCBook ugcBook) {
                if (ugcBook == null) return;
                ((CoverView) this.a(0, CoverView.class)).setImageUrl(ugcBook.getFullCover(), R.drawable.cover_default);
                this.a(1, ugcBook.getTitle());
                this.a(4, ugcBook.getDesc());
                if (ugcBook.isDraft()) {
                    Object[] arrobject = new Object[]{ugcBook.getBookCount()};
                    this.a(2, String.format("共%1$d本书", arrobject));
                    this.a(3, true);
                    this.a(5, com.clilystudio.netbook.util.t.e((Date) ugcBook.getUpdated()));
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
                Object[] arrobject = new Object[]{ugcBook.getBookCount(), ugcBook.getCollectorCount()};
                this.a(2, String.format("共%1$d本书  |  %2$d人收藏", arrobject));
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
