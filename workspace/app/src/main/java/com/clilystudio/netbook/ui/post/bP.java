package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;

final class bP implements View$OnClickListener {

    MyTweetFragment a;     // final access specifier removed

    bP(MyTweetFragment MyTweetFragment1) {
        a = MyTweetFragment1;
    }

    public final void onClick(View View1) {
        if (MyTweetFragment.f(a) == null && MyTweetFragment.g(a) != 0) {
            bU bU3;
            String[] String_1darray4;

            if (MyTweetFragment.h(a) != null)
                MyTweetFragment.h(a).cancel(true);
            MyTweetFragment.a(a, new bU(a, (Runnable) new bQ(this)));
            bU3 = MyTweetFragment.h(a);
            String_1darray4 = new String[1];
            String_1darray4[0] = am.e().getUser().getId();
            bU3.b(String_1darray4);
        } else
            MyTweetFragment.i(a);
    }
}
