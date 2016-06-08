package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TweetResult;

final class dz extends e<String, Void, TweetResult> {
    private dz(TweetDetailActivity paramTweetDetailActivity) {
    }

    private TweetResult a() {
        try {
            TweetResult localTweetResult = b.b().l(this.a.a);
            return localTweetResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

