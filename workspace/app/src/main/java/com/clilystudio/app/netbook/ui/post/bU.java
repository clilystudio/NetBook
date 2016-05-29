package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.FollowersResult;

final class bU extends e<String, Void, FollowersResult> {
    private Runnable a;

    public bU(MyTweetFragment paramMyTweetFragment, Runnable paramRunnable) {
        this.a = paramRunnable;
    }

    private static FollowersResult a(String[] paramArrayOfString) {
        try {
            b.a();
            FollowersResult localFollowersResult = b.b().i(paramArrayOfString[0]);
            return localFollowersResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bU
 * JD-Core Version:    0.6.2
 */