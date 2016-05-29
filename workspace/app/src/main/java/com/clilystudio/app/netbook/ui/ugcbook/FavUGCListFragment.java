package com.clilystudio.app.netbook.ui.ugcbook;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.UGCBookListRoot;
import com.clilystudio.app.netbook.model.UGCBookListRoot.UGCBook;
import com.clilystudio.app.netbook.util.W;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import uk.me.lewisdeane.ldialogs.h;

public class FavUGCListFragment extends AbsUGCListFragment
        implements AdapterView.OnItemLongClickListener {
    private ListView k;
    private W l;
    private PullToRefreshListView m;

    protected final UGCBookListRoot a(Account paramAccount, int paramInt) {
        b.a();
        return b.b().f(paramAccount.getToken(), paramInt);
    }

    protected final String c() {
        return "这里还没有书单，去收藏一个吧";
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        this.m = ((PullToRefreshListView) getView().findViewById(2131493099));
        this.k = ((ListView) this.m.h());
        this.k.setOnItemLongClickListener(this);
        this.l = b();
    }

    public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - this.k.getHeaderViewsCount();
        if ((i < 0) || (i >= this.l.getCount()))
            return false;
        UGCBookListRoot.UGCBook localUGCBook = (UGCBookListRoot.UGCBook) this.l.getItem(i);
        if (localUGCBook == null)
            return false;
        String str = localUGCBook.getTitle();
        h localh = new h(getActivity());
        localh.d = str;
        localh.a(new String[]{"删除"}, new g(this, localUGCBook)).a().show();
        return true;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.FavUGCListFragment
 * JD-Core Version:    0.6.2
 */