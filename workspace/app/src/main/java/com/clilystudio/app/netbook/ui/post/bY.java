package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UserInfoResult;

final class bY extends e_BaseAsyncTask<String, Void, UserInfoResult> {
    private Runnable a;

    public bY(MyTweetFragment paramMyTweetFragment, Runnable paramRunnable) {
        this.a = paramRunnable;
    }

    private static UserInfoResult a(String[] paramArrayOfString) {
        try {
            b.a();
            UserInfoResult localUserInfoResult = b.b().m(paramArrayOfString[0]);
            return localUserInfoResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bY
 * JD-Core Version:    0.6.2
 */