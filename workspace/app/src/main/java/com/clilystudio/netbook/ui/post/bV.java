package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.FollowingsResult;

final class bV extends e<String, Void, FollowingsResult> {
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

