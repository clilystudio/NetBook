package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;

final class z extends e<String, Void, Topic> {
    private z(MyFavTopicFragment paramMyFavTopicFragment) {
    }

    private Topic a(String[] paramArrayOfString) {
        if (!isCancelled())
            try {
                b.a();
                Topic localTopic = b.b().d(paramArrayOfString[0], MyFavTopicFragment.k(this.a));
                return localTopic;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        return null;
    }
}
