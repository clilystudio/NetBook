package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class at extends com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot> {
    private /* synthetic */ UGCMainListFragment a;

    private at(UGCMainListFragment uGCMainListFragment) {
        this.a = uGCMainListFragment;
    }

    /* synthetic */ at(UGCMainListFragment uGCMainListFragment, byte by) {
        this(uGCMainListFragment);
    }

    private /* varargs */ UGCBookListRoot a() {
        try {
            b.a();
            UGCBookListRoot uGCBookListRoot = b.b().a(this.a.getArguments().getString("duration"), this.a.getArguments().getString("sort"), 0, 20, this.a.b());
            return uGCBookListRoot;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UGCBookListRoot uGCBookListRoot = (UGCBookListRoot) object;
        super.onPostExecute(uGCBookListRoot);
        UGCMainListFragment.a(this.a).setVisibility(8);
        UGCMainListFragment.c(this.a).setVisibility(8);
        UGCMainListFragment.d(this.a).setVisibility(8);
        UGCMainListFragment.e(this.a).n();
        UGCMainListFragment.e(this.a).setOnLastItemVisibleListener(UGCMainListFragment.f(this.a));
        if (uGCBookListRoot != null) {
            if (uGCBookListRoot.isOk()) {
                UGCMainListFragment.g(this.a).clear();
                UGCBookListRoot$UGCBook[] arruGCBookListRoot$UGCBook = uGCBookListRoot.getBookLists();
                int n = arruGCBookListRoot$UGCBook.length;
                List<UGCBookListRoot$UGCBook> list = Arrays.asList(arruGCBookListRoot$UGCBook);
                UGCMainListFragment.g(this.a).addAll(list);
                UGCMainListFragment.h(this.a).a(UGCMainListFragment.g(this.a));
                if (n < 20) {
                    UGCMainListFragment.e(this.a).setOnLastItemVisibleListener(null);
                    if (n == 0) {
                        UGCMainListFragment.a(this.a).setVisibility(0);
                        UGCMainListFragment.a(this.a).setText("\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u5355\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
                    }
                }
                return;
            }
            e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u4e0b\u62c9\u5237\u65b0\u91cd\u8bd5");
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
