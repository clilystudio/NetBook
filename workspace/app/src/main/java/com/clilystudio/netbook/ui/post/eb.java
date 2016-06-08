package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TimelineResult;

final class eb extends e<String, Void, TimelineResult> {
    private eb(TweetTimelineFragment paramTweetTimelineFragment) {
    }

    private static TimelineResult a(String[] paramArrayOfString) {
        try {
            b.a();
            TimelineResult localTimelineResult = b.b().d(paramArrayOfString[0], paramArrayOfString[1], null);
            return localTimelineResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

