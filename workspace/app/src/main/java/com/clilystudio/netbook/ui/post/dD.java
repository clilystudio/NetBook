package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;

final class dD extends c<String, PostPublish> {
    public dD(TweetDetailActivity paramTweetDetailActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034430);
    }

    private PostPublish a(String[] paramArrayOfString) {
        try {
            PostPublish localPostPublish = b.b().c(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
            return localPostPublish;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

