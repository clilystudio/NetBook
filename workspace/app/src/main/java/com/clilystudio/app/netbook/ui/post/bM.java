package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class bM
        implements Runnable {
    bM(bL parambL) {
    }

    public final void run() {
        if (!am_CommonUtils.a_isTaskStoped(MyTweetFragment.b(this.a.a)))
            MyTweetFragment.b(this.a.a).cancel(true);
        MyTweetFragment.c(this.a.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bM
 * JD-Core Version:    0.6.2
 */