package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.util.e;

import java.util.List;

final class A implements View.OnClickListener {
    private /* synthetic */ HomeShelfFragment a;

    A(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final void onClick(View view) {
        if (HomeShelfFragment.a(this.a) == null) return;
        List<BookShelf> list = HomeShelfFragment.a(this.a).e();
        if (list == null || list.size() == 0) {
            e.a((Context) this.a.getActivity(), (String) "\u4f60\u6ca1\u6709\u9009\u62e9\u8981\u5220\u9664\u7684\u4e66\u54e6");
            return;
        }
        HomeShelfFragment.a(this.a, list);
    }
}
