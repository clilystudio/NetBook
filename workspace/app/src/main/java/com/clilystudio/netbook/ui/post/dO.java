package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;

final class dO extends e<String, Void, Topic> {
    private dO(TweetListFragment paramTweetListFragment) {
    }

    private static Topic a(String[] paramArrayOfString) {
        try {
            b.a();
            Topic localTopic = b.b().b(paramArrayOfString[0], paramArrayOfString[1], 0, 20);
            return localTopic;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

