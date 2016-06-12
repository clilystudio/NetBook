package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.Arrays;
import java.util.Collection;

final class d extends com.clilystudio.netbook.a.e {

    private AbsUGCListFragment a;

    d(AbsUGCListFragment AbsUGCListFragment1, byte byte2) {
        this(AbsUGCListFragment1);
    }

    private d(AbsUGCListFragment AbsUGCListFragment1) {
        a = AbsUGCListFragment1;
    }

    private transient UGCBookListRoot a() {
        if (!isCancelled()) {
            try {
                Account Account2 = am.a((Activity) (BaseActivity) a.getActivity());
            } catch (Exception Exception1) {
                Exception1.printStackTrace();
            }
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (UGCBookListRoot) Object1;

        super.onPostExecute(Object2);
        a.j.setVisibility(8);
        a.d.setVisibility(8);
        a.e.setVisibility(8);
        a.a.n();
        if (!isCancelled()) {
            if (Object2 != null) {
                if (((UGCBookListRoot) Object2).isOk()) {
                    UGCBookListRoot$UGCBook[] UGCBook_1darray3 = ((UGCBookListRoot) Object2).getBookLists();
                    int int4 = UGCBook_1darray3.length;
                    Object Object5 = Arrays.asList(UGCBook_1darray3);

                    a.i.addAll((Collection) Object5);
                    a.c.a((Collection) a.i);
                    AbsUGCListFragment.a(a, int4);
                    if (int4 > 0) {
                        if (int4 >= 10) {
                            if (int4 == 10)
                                a.a.setOnLastItemVisibleListener(AbsUGCListFragment.a(a));
                            return;
                        }
                    } else if (a.c.getCount() == 0) {
                        a.j.setVisibility(0);
                        a.j.setText((CharSequence) a.c());
                    }
                    a.a.setOnLastItemVisibleListener(null);
                } else {
                    a.a.setOnLastItemVisibleListener(AbsUGCListFragment.a(a));
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u4E0A\u62C9\u53EF\u91CD\u65B0\u52A0\u8F7D");
                }
            } else {
                a.a.setOnLastItemVisibleListener(AbsUGCListFragment.a(a));
                com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
            }
            return;
        }
    }
}
