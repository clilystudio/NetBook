package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Topic;

final class z extends e_BaseAsyncTask<String, Void, Topic> {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.z
 * JD-Core Version:    0.6.2
 */