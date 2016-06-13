package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;
import android.view.View;

final class bR
        implements View.OnClickListener {
    final /* synthetic */ MyTweetFragment a;

    bR(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    @Override
    public final void onClick(View view) {
        if (MyTweetFragment.j(this.a) == null && MyTweetFragment.k(this.a) != 0) {
            if (MyTweetFragment.l(this.a) != null) {
                MyTweetFragment.l(this.a).cancel(true);
            }
            MyTweetFragment.a(this.a, new bV(this.a, new bS(this)));
            bV bV2 = MyTweetFragment.l(this.a);
            String[] arrstring = new String[]{am.e().getUser().getId()};
            bV2.b(arrstring);
            return;
        }
        MyTweetFragment.m(this.a);
    }
}
