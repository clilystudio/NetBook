package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.FollowingsResult;

final class bV extends e_BaseAsyncTask<String, Void, FollowingsResult> {
    private Runnable a;

    public bV(MyTweetFragment paramMyTweetFragment, Runnable paramRunnable) {
        this.a = paramRunnable;
    }

    private static FollowingsResult a(String[] paramArrayOfString) {
        try {
            b.a();
            FollowingsResult localFollowingsResult = b.b().h(paramArrayOfString[0]);
            return localFollowingsResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bV
 * JD-Core Version:    0.6.2
 */