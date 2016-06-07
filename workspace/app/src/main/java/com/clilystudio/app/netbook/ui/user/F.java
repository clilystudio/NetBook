package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Topic;

final class F extends e_BaseAsyncTask<String, Void, Topic> {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.F
 * JD-Core Version:    0.6.2
 */