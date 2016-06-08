package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UserInfoResult;

final class bY extends e<String, Void, UserInfoResult> {
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

