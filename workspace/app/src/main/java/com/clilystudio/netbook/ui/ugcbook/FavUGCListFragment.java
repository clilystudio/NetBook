package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.util.W;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import uk.me.lewisdeane.ldialogs.h;

public class FavUGCListFragment extends AbsUGCListFragment implements AdapterView.OnItemLongClickListener {
    private ListView k;
    private W l;
    private PullToRefreshListView m;

    static /* synthetic */ PullToRefreshListView a(FavUGCListFragment favUGCListFragment) {
        return favUGCListFragment.m;
    }

    @Override
    protected final UGCBookListRoot a(Account account, int n) {
        b.a();
        return b.b().f(account.getToken(), n);
    }

    @Override
    protected final String c() {
        return "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u5355\uff0c\u53bb\u6536\u85cf\u4e00\u4e2a\u5427";
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.m = (PullToRefreshListView) this.getView().findViewById(2131493099);
        this.k = (ListView) this.m.h();
        this.k.setOnItemLongClickListener(this);
        this.l = this.b();
    }

    @Override
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int n, long l2) {
        int n2 = n - this.k.getHeaderViewsCount();
        if (n2 < 0 || n2 >= this.l.getCount()) {
            return false;
        }
        UGCBookListRoot$UGCBook uGCBookListRoot$UGCBook = (UGCBookListRoot$UGCBook) this.l.getItem(n2);
        if (uGCBookListRoot$UGCBook == null) {
            return false;
        }
        String string = uGCBookListRoot$UGCBook.getTitle();
        h h2 = new h(this.getActivity());
        h2.d = string;
        h2.a(new String[]{"\u5220\u9664"}, (DialogInterface.OnClickListener) ((Object) new g(this, uGCBookListRoot$UGCBook))).a().show();
        return true;
    }
}
