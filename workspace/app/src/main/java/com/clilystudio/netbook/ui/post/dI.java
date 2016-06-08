package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotTweetResult;

final class dI extends e<String, Void, HotTweetResult> {
    private dI(TweetHotFragment paramTweetHotFragment) {
    }

    private static HotTweetResult a() {
        try {
            b.a();
            HotTweetResult localHotTweetResult = b.b().j(null);
            return localHotTweetResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

