package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;

final class A extends e<String, Void, Topic> {
    private A(MyFavTopicFragment paramMyFavTopicFragment) {
    }

    private static Topic a(String[] paramArrayOfString) {
        try {
            b.a();
            Topic localTopic = b.b().d(paramArrayOfString[0], 0);
            return localTopic;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

