package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;

final class g implements DialogInterface.OnClickListener {
    private /* synthetic */ UGCBookListRoot$UGCBook a;
    private /* synthetic */ FavUGCListFragment b;

    g(FavUGCListFragment favUGCListFragment, UGCBookListRoot$UGCBook uGCBook) {
        this.b = favUGCListFragment;
        this.a = uGCBook;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        Account account = am.a((BaseActivity) this.b.getActivity());
        if (account != null) {
            FavUGCListFragment.a(this.b).setRefreshing();
            h h2 = new h(this.b, 0);
            String[] arrstring = new String[]{account.getToken(), this.a.get_id()};
            h2.b(arrstring);
        }
    }
}
