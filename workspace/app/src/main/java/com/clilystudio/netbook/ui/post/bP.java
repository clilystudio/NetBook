package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;
import android.view.View;

final class bP implements View.OnClickListener {
    final /* synthetic */ MyTweetFragment a;

    bP(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    @Override
    public final void onClick(View view) {
        if (MyTweetFragment.f(this.a) == null && MyTweetFragment.g(this.a) != 0) {
            if (MyTweetFragment.h(this.a) != null) {
                MyTweetFragment.h(this.a).cancel(true);
            }
            MyTweetFragment.a(this.a, new bU(this.a, new bQ(this)));
            bU bU2 = MyTweetFragment.h(this.a);
            String[] arrstring = new String[]{am.e().getUser().getId()};
            bU2.b(arrstring);
            return;
        }
        MyTweetFragment.i(this.a);
    }
}
