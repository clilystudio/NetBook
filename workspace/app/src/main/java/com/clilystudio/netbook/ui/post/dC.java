package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;

final class dC extends c<String, PostPublish> {
    public dC(TweetDetailActivity paramTweetDetailActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034473);
    }

    private PostPublish a(String[] paramArrayOfString) {
        try {
            PostPublish localPostPublish = b.b().m(paramArrayOfString[0], paramArrayOfString[1]);
            return localPostPublish;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}
