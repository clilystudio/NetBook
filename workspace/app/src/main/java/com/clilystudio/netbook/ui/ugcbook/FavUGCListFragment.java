package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemLongClickListener;
import android.widget.ListView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import com.clilystudio.netbook.util.W;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

public class FavUGCListFragment extends AbsUGCListFragment implements AdapterView$OnItemLongClickListener {

    private ListView k;
    private W l;
    private PullToRefreshListView m;

    static PullToRefreshListView a(FavUGCListFragment FavUGCListFragment1) {
        return FavUGCListFragment1.m;
    }

    protected final UGCBookListRoot a(Account Account1, int int2) {
        com.clilystudio.netbook.api.b.a();
        return com.clilystudio.netbook.api.b.b().f(Account1.getToken(), int2);
    }

    protected final String c() {
        return "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u4E66\u5355\uFF0C\u53BB\u6536\u85CF\u4E00\u4E2A\u5427";
    }

    public void onActivityCreated(Bundle Bundle1) {
        super.onActivityCreated(Bundle1);
        m = (PullToRefreshListView) getView().findViewById(2131493099);
        k = (ListView) m.h();
        k.setOnItemLongClickListener(this);
        l = b();
    }

    public boolean onItemLongClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        int int6 = int3 - k.getHeaderViewsCount();

        if (int6 < 0 || int6 >= l.getCount())
            return false;
        else {
            UGCBookListRoot$UGCBook UGCBook7 = (UGCBookListRoot$UGCBook) l.getItem(int6);

            if (UGCBook7 == null)
                return false;
            else {
                String String8 = UGCBook7.getTitle();
                uk.me.lewisdeane.ldialogs.h h9 = new uk.me.lewisdeane.ldialogs.h((Context) getActivity());

                h9.d = String8;
                h9.a((CharSequence[]) new String[]{"\u5220\u9664"}, (DialogInterface$OnClickListener) new g(this, UGCBook7)).a().show();
                return true;
            }
        }
    }
}
