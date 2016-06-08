package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;

final class dN extends e<String, Void, Topic> {
    private dN(TweetListFragment paramTweetListFragment) {
    }

    private Topic a(String[] paramArrayOfString) {
        try {
            b.a();
            Topic localTopic = b.b().b(paramArrayOfString[0], paramArrayOfString[1], TweetListFragment.e(this.a).size(), 20);
            return localTopic;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

