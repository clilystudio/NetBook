package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Topic;

final class dN extends e_BaseAsyncTask<String, Void, Topic> {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dN
 * JD-Core Version:    0.6.2
 */