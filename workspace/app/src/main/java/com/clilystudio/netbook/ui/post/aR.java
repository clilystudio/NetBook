package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;

final class aR extends e<String, Void, Topic> {
    private aR(BookTopicListFragment paramBookTopicListFragment) {
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

