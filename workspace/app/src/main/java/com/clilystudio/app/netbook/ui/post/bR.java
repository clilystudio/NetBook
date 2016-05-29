package com.clilystudio.app.netbook.ui.post;

import android.view.View;

import com.clilystudio.app.netbook.util.am_CommonUtils;

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
            arrayOfString[0] = am_CommonUtils.e().getUser().getId();
            localbV.b(arrayOfString);
            return;
        }
        MyTweetFragment.m(this.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bR
 * JD-Core Version:    0.6.2
 */