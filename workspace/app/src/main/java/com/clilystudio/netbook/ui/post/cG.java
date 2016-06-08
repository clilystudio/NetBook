package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TweetResult;

final class cG extends e<String, Void, TweetResult> {
    private cG(ReviewActivity paramReviewActivity) {
    }

    private TweetResult a(String[] paramArrayOfString) {
        try {
            TweetResult localTweetResult = b.b().l(paramArrayOfString[0]);
            return localTweetResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

