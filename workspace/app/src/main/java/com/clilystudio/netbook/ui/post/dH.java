package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotTweetResult;

final class dH extends e<String, Void, HotTweetResult> {
    private dH(TweetHotFragment paramTweetHotFragment) {
    }

    private static HotTweetResult a(String[] paramArrayOfString) {
        try {
            b.a();
            HotTweetResult localHotTweetResult = b.b().j(paramArrayOfString[0]);
            return localHotTweetResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

