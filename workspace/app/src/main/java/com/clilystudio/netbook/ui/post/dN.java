package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

import java.util.Collection;

final class dN
        extends com.clilystudio.netbook.a_pack.e<String, Void, Topic> {
    private /* synthetic */ TweetListFragment a;

    private dN(TweetListFragment tweetListFragment) {
        this.a = tweetListFragment;
    }

    /* synthetic */ dN(TweetListFragment tweetListFragment, byte by) {
        this(tweetListFragment);
    }

    private /* varargs */ Topic a(String... arrstring) {
        try {
            b.a();
            Topic topic = b.b().b(arrstring[0], arrstring[1], TweetListFragment.e(this.a).size(), 20);
            return topic;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        Topic topic = (Topic) object;
        super.onPostExecute(topic);
        if (this.a.getActivity() == null) return;
        TweetListFragment.f(this.a);
        if (this.isCancelled()) return;
        if (topic != null && topic.getPosts() != null) {
            TopicPost[] arrtopicPost = topic.getPosts();
            int n = arrtopicPost.length;
            if (n > 0) {
                for (TopicPost topicPost : arrtopicPost) {
                    TweetListFragment.e(this.a).add(topicPost);
                }
                TweetListFragment.g(this.a).a((Collection) TweetListFragment.e(this.a));
                if (n >= 20) {
                    TweetListFragment.h(this.a).setOnLastItemVisibleListener(TweetListFragment.i(this.a));
                    return;
                }
            }
            TweetListFragment.h(this.a).setOnLastItemVisibleListener(null);
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5");
    }
}
