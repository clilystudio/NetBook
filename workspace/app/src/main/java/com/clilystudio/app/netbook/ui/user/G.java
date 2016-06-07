package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Topic;

final class G extends e_BaseAsyncTask<String, Void, Topic> {
    private G(MyTopicFragment paramMyTopicFragment) {
    }

    private static Topic a(String[] paramArrayOfString) {
        try {
            b.a();
            Topic localTopic = b.b().e(paramArrayOfString[0], 0);
            return localTopic;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.G
 * JD-Core Version:    0.6.2
 */