package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot.UGCBook;
import com.clilystudio.netbook.ui.BaseActivity;

final class g
        implements DialogInterface.OnClickListener {
    g(FavUGCListFragment paramFavUGCListFragment, UGCBookListRoot.UGCBook paramUGCBook) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        Account localAccount = am.a((BaseActivity) this.b.getActivity());
        if (localAccount != null) {
            FavUGCListFragment.a(this.b).setRefreshing();
            h localh = new h(this.b, 0);
            String[] arrayOfString = new String[2];
            arrayOfString[0] = localAccount.getToken();
            arrayOfString[1] = this.a.get_id();
            localh.b(arrayOfString);
        }
    }
}
