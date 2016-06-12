package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;

import java.util.Arrays;
import java.util.Collection;

final class at extends com.clilystudio.netbook.a.e {

    private UGCMainListFragment a;

    at(UGCMainListFragment UGCMainListFragment1, byte byte2) {
        this(UGCMainListFragment1);
    }

    private at(UGCMainListFragment UGCMainListFragment1) {
        a = UGCMainListFragment1;
    }

    private transient UGCBookListRoot a() {
        UGCBookListRoot UGCBookListRoot3;

        try {
            com.clilystudio.netbook.api.b.a();
            UGCBookListRoot3 = com.clilystudio.netbook.api.b.b().a(a.getArguments().getString("duration"), a.getArguments().getString("sort"), 0, 20, a.b());
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return UGCBookListRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (UGCBookListRoot) Object1;

        super.onPostExecute(Object2);
        UGCMainListFragment.a(a).setVisibility(8);
        UGCMainListFragment.c(a).setVisibility(8);
        UGCMainListFragment.d(a).setVisibility(8);
        UGCMainListFragment.e(a).n();
        UGCMainListFragment.e(a).setOnLastItemVisibleListener(UGCMainListFragment.f(a));
        if (Object2 != null) {
            if (((UGCBookListRoot) Object2).isOk()) {
                UGCBookListRoot$UGCBook[] UGCBook_1darray3;
                int int4;
                Object Object5;

                UGCMainListFragment.g(a).clear();
                UGCBook_1darray3 = ((UGCBookListRoot) Object2).getBookLists();
                int4 = UGCBook_1darray3.length;
                Object5 = Arrays.asList(UGCBook_1darray3);
                UGCMainListFragment.g(a).addAll((Collection) Object5);
                UGCMainListFragment.h(a).a((Collection) UGCMainListFragment.g(a));
                if (int4 < 20) {
                    UGCMainListFragment.e(a).setOnLastItemVisibleListener(null);
                    if (int4 == 0) {
                        UGCMainListFragment.a(a).setVisibility(0);
                        UGCMainListFragment.a(a).setText((CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u4E66\u5355\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427");
                    }
                }
            } else
                com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u4E0B\u62C9\u5237\u65B0\u91CD\u8BD5");
        } else
            com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
    }
}
