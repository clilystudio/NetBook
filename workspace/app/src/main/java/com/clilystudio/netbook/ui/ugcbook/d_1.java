package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class d extends com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot> {
    private /* synthetic */ AbsUGCListFragment a;

    private d(AbsUGCListFragment absUGCListFragment) {
        this.a = absUGCListFragment;
    }

    /* synthetic */ d(AbsUGCListFragment absUGCListFragment, byte by) {
        this(absUGCListFragment);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ UGCBookListRoot a() {
        if (this.isCancelled()) return null;
        Account account = am.a((BaseActivity) this.a.getActivity());
        if (account == null) return null;
        try {
            return this.a.a(account, this.a.c.getCount());
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UGCBookListRoot uGCBookListRoot = (UGCBookListRoot) object;
        super.onPostExecute(uGCBookListRoot);
        this.a.j.setVisibility(View.GONE);
        this.a.d.setVisibility(View.GONE);
        this.a.e.setVisibility(View.GONE);
        this.a.a.n();
        if (this.isCancelled()) return;
        if (uGCBookListRoot != null) {
            if (uGCBookListRoot.isOk()) {
                UGCBookListRoot$UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                int n = arruGCBookListRoot$UGCBook.length;
                List<UGCBookListRoot$UGCBook> list = Arrays.asList(arruGCBookListRoot$UGCBook);
                this.a.i.addAll(list);
                this.a.c.a(this.a.i);
                AbsUGCListFragment.a(this.a, n);
                if (n > 0) {
                    if (n >= 10) {
                        if (n != 10) return;
                        this.a.a.setOnLastItemVisibleListener(AbsUGCListFragment.a(this.a));
                        return;
                    }
                } else if (this.a.c.getCount() == 0) {
                    this.a.j.setVisibility(View.VISIBLE);
                    this.a.j.setText(this.a.c());
                }
                this.a.a.setOnLastItemVisibleListener(null);
                return;
            }
            this.a.a.setOnLastItemVisibleListener(AbsUGCListFragment.a(this.a));
            e.a((Activity) this.a.getActivity(), "\u52a0\u8f7d\u5931\u8d25\uff0c\u4e0a\u62c9\u53ef\u91cd\u65b0\u52a0\u8f7d");
            return;
        }
        this.a.a.setOnLastItemVisibleListener(AbsUGCListFragment.a(this.a));
        e.a((Activity) this.a.getActivity(), "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
