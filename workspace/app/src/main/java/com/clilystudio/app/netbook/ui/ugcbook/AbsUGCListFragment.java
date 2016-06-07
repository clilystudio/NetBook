package com.clilystudio.app.netbook.ui.ugcbook;

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

import com.clilystudio.app.netbook.adapter.X;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.UGCBookListRoot;
import com.clilystudio.app.netbook.model.UGCBookListRoot.UGCBook;
import com.clilystudio.app.netbook.util.W;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public abstract class AbsUGCListFragment extends Fragment
        implements AdapterView.OnItemClickListener {
    protected PullToRefreshListView a;
    protected ListView b;
    protected X c;
    protected View d;
    protected View e;
    protected Handler f = new Handler();
    protected e_BaseAsyncTask g;
    protected d h;
    protected List<UGCBookListRoot.UGCBook> i = new ArrayList();
    protected TextView j;
    private TextView k;
    private String l = "共%d个书单";
    private j m = new a(this);

    protected abstract UGCBookListRoot a(Account paramAccount, int paramInt);

    public final void a() {
        new e_BaseAsyncTask(this, (byte) 0).b(new String[0]);
    }

    public final W b() {
        return this.c;
    }

    protected abstract String c();

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        a();
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
        View localView1 = paramLayoutInflater.inflate(2130903207, paramViewGroup, false);
        this.a = ((PullToRefreshListView) localView1.findViewById(2131493099));
        this.b = ((ListView) this.a.h());
        this.b.setOnItemClickListener(this);
        com.arcsoft.hpay100.a.a.a(getActivity(), this.b);
        View localView2 = paramLayoutInflater.inflate(2130903330, this.b, false);
        this.k = ((TextView) localView2.findViewById(2131492905));
        this.k.setVisibility(8);
        this.b.addHeaderView(localView2, null, false);
        this.d = localView1.findViewById(2131493085);
        this.j = ((TextView) localView1.findViewById(2131493100));
        this.e = LayoutInflater.from(getActivity()).inflate(2130903325, null);
        if (Build.VERSION.SDK_INT > 19)
            this.b.setFooterDividersEnabled(false);
        this.b.addFooterView(this.e);
        this.e.setVisibility(8);
        this.a.setOnRefreshListener(new b(this));
        this.c = new X(getActivity().getLayoutInflater());
        this.b.setAdapter(this.c);
        return localView1;
    }

    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int n = paramInt - this.b.getHeaderViewsCount();
        if ((n >= 0) && (n < this.i.size())) {
            UGCBookListRoot.UGCBook localUGCBook = (UGCBookListRoot.UGCBook) this.i.get(n);
            if (localUGCBook != null) {
                Intent localIntent = new Intent(getActivity(), UGCDetailActivity.class);
                localIntent.putExtra("book_id", localUGCBook.get_id());
                startActivity(localIntent);
            }
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.AbsUGCListFragment
 * JD-Core Version:    0.6.2
 */