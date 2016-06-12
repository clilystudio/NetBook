package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import java.util.List;

final class A implements View$OnClickListener {

    private HomeShelfFragment a;

    A(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    public final void onClick(View View1) {
        if (HomeShelfFragment.a(a) != null) {
            List List2 = HomeShelfFragment.a(a).e();

            if (List2 == null || List2.size() == 0)
                com.clilystudio.netbook.util.e.a((Context) a.getActivity(), "\u4F60\u6CA1\u6709\u9009\u62E9\u8981\u5220\u9664\u7684\u4E66\u54E6");
            else {
                HomeShelfFragment.a(a, List2);
                return;
            }
        }
    }
}
