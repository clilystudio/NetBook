package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import com.clilystudio.netbook.ui.BaseActivity;

final class g implements DialogInterface$OnClickListener {

    private UGCBookListRoot$UGCBook a;
    private FavUGCListFragment b;
    g(FavUGCListFragment FavUGCListFragment1, UGCBookListRoot$UGCBook UGCBook2) {
        b = FavUGCListFragment1;
        a = UGCBook2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        Account Account3 = am.a((Activity) (BaseActivity) b.getActivity());

        if (Account3 != null) {
            h h4;
            String[] String_1darray5;

            FavUGCListFragment.a(b).setRefreshing();
            h4 = new h(b, (byte) 0);
            String_1darray5 = new String[2];
            String_1darray5[0] = Account3.getToken();
            String_1darray5[1] = a.get_id();
            h4.b(String_1darray5);
        }
    }
}
