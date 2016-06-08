package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;

final class F extends e<String, Void, Topic> {
    private F(MyTopicFragment paramMyTopicFragment) {
    }

    private Topic a(String[] paramArrayOfString) {
        if (!isCancelled())
            try {
                b.a();
                Topic localTopic = b.b().e(paramArrayOfString[0], MyTopicFragment.h(this.a).size());
                return localTopic;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        return null;
    }
}

