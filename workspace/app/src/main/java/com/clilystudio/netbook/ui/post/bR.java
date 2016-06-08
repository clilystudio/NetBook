package com.clilystudio.netbook.ui.post;

import android.view.View;

final class bR
        implements View.OnClickListener {
    bR(MyTweetFragment paramMyTweetFragment) {
    }

    public final void onClick(View paramView) {
        if ((MyTweetFragment.j(this.a) == null) && (MyTweetFragment.k(this.a) != 0)) {
            if (MyTweetFragment.l(this.a) != null)
                MyTweetFragment.l(this.a).cancel(true);
            MyTweetFragment.a(this.a, new bV(this.a, new bS(this)));
            bV localbV = MyTweetFragment.l(this.a);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = am.e().getUser().getId();
            localbV.b(arrayOfString);
            return;
        }
        MyTweetFragment.m(this.a);
    }
}

