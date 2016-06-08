package com.clilystudio.netbook.ui.post;

import android.view.View;

final class bP
        implements View.OnClickListener {
    bP(MyTweetFragment paramMyTweetFragment) {
    }

    public final void onClick(View paramView) {
        if ((MyTweetFragment.f(this.a) == null) && (MyTweetFragment.g(this.a) != 0)) {
            if (MyTweetFragment.h(this.a) != null)
                MyTweetFragment.h(this.a).cancel(true);
            MyTweetFragment.a(this.a, new bU(this.a, new bQ(this)));
            bU localbU = MyTweetFragment.h(this.a);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = am.e().getUser().getId();
            localbU.b(arrayOfString);
            return;
        }
        MyTweetFragment.i(this.a);
    }
}

