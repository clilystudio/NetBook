package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.HotTweetResult;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dI
 * JD-Core Version:    0.6.2
 */