package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class as
        extends com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot> {
    private /* synthetic */ UGCMainListFragment a;

    private as(UGCMainListFragment uGCMainListFragment) {
        this.a = uGCMainListFragment;
    }

    /* synthetic */ as(UGCMainListFragment uGCMainListFragment, byte by) {
        this(uGCMainListFragment);
    }

    private /* varargs */ UGCBookListRoot a() {
        if (!this.isCancelled()) {
            try {
                b.a();
                UGCBookListRoot uGCBookListRoot = b.b().a(this.a.getArguments().getString("duration"), this.a.getArguments().getString("sort"), UGCMainListFragment.h(this.a).getCount(), 20, this.a.b());
                return uGCBookListRoot;
            } catch (Exception var1_2) {
                var1_2.printStackTrace();
            }
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
        UGCMainListFragment.a(this.a).setVisibility(8);
        UGCMainListFragment.c(this.a).setVisibility(8);
        UGCMainListFragment.d(this.a).setVisibility(8);
        UGCMainListFragment.e(this.a).n();
        if (this.isCancelled()) return;
        if (uGCBookListRoot != null) {
            if (uGCBookListRoot.isOk()) {
                UGCBookListRoot$UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                int n = arruGCBookListRoot$UGCBook.length;
                List<UGCBookListRoot$UGCBook> list = Arrays.asList(arruGCBookListRoot$UGCBook);
                UGCMainListFragment.g(this.a).addAll(list);
                UGCMainListFragment.h(this.a).a(UGCMainListFragment.g(this.a));
                if (n > 0) {
                    if (n >= 20) {
                        if (n != 20) return;
                        UGCMainListFragment.e(this.a).setOnLastItemVisibleListener(UGCMainListFragment.f(this.a));
                        return;
                    }
                } else if (UGCMainListFragment.h(this.a).getCount() == 0) {
                    UGCMainListFragment.a(this.a).setVisibility(0);
                    UGCMainListFragment.a(this.a).setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u5e16\u5b50\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
                }
                UGCMainListFragment.e(this.a).setOnLastItemVisibleListener(null);
                return;
            }
            UGCMainListFragment.e(this.a).setOnLastItemVisibleListener(UGCMainListFragment.f(this.a));
            e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u4e0a\u62c9\u53ef\u91cd\u65b0\u52a0\u8f7d");
            return;
        }
        UGCMainListFragment.e(this.a).setOnLastItemVisibleListener(UGCMainListFragment.f(this.a));
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
