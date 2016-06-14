package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.Arrays;

final class e extends com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot> {
    private /* synthetic */ AbsUGCListFragment a;

    private e(AbsUGCListFragment absUGCListFragment) {
        this.a = absUGCListFragment;
    }

    /* synthetic */ e(AbsUGCListFragment absUGCListFragment, byte by) {
        this(absUGCListFragment);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ UGCBookListRoot a() {
        Account account = am.a((BaseActivity) this.a.getActivity());
        if (account == null) return null;
        try {
            return this.a.a(account, 0);
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UGCBookListRoot uGCBookListRoot = (UGCBookListRoot) object;
        super.onPostExecute(uGCBookListRoot);
        this.a.j.setVisibility(8);
        this.a.d.setVisibility(8);
        this.a.e.setVisibility(8);
        this.a.a.n();
        this.a.a.setOnLastItemVisibleListener(AbsUGCListFragment.a(this.a));
        if (uGCBookListRoot != null) {
            if (uGCBookListRoot.isOk()) {
                this.a.i.clear();
                UGCBookListRoot$UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                int n = arruGCBookListRoot$UGCBook.length;
                for (UGCBookListRoot$UGCBook uGCBookListRoot$UGCBook : Arrays.asList(arruGCBookListRoot$UGCBook)) {
                    if (uGCBookListRoot$UGCBook == null) continue;
                    this.a.i.add(uGCBookListRoot$UGCBook);
                }
                this.a.c.a(this.a.i);
                AbsUGCListFragment.a(this.a, n);
                if (n < 10) {
                    this.a.a.setOnLastItemVisibleListener(null);
                    if (n == 0) {
                        this.a.j.setVisibility(0);
                        this.a.j.setText(this.a.c());
                    }
                }
                return;
            }
            com.clilystudio.netbook.util.e.a((Activity) this.a.getActivity(), "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u4e0b\u62c9\u5237\u65b0\u91cd\u8bd5");
            return;
        }
        com.clilystudio.netbook.util.e.a((Activity) this.a.getActivity(), "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u4e0b\u62c9\u5237\u65b0\u91cd\u8bd5");
    }
}
