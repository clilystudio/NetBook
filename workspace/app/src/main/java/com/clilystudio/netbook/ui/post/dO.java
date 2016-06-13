package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

import java.util.Collection;

final class dO
        extends com.clilystudio.netbook.a.e<String, Void, Topic> {
    private /* synthetic */ TweetListFragment a;

    private dO(TweetListFragment tweetListFragment) {
        this.a = tweetListFragment;
    }

    /* synthetic */ dO(TweetListFragment tweetListFragment, byte by) {
        this(tweetListFragment);
    }

    private static /* varargs */ Topic a(String... arrstring) {
        try {
            b.a();
            Topic topic = b.b().b(arrstring[0], arrstring[1], 0, 20);
            return topic;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return dO.a((String[]) arrobject);
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
        if (topic != null && topic.getPosts() != null) {
            TweetListFragment.e(this.a).clear();
            TopicPost[] arrtopicPost = topic.getPosts();
            int n = arrtopicPost.length;
            if (n > 0) {
                for (TopicPost topicPost : arrtopicPost) {
                    TweetListFragment.e(this.a).add(topicPost);
                }
                TweetListFragment.g(this.a).a((Collection) TweetListFragment.e(this.a));
                if (n < 20) {
                    TweetListFragment.h(this.a).setOnLastItemVisibleListener(null);
                    return;
                }
                TweetListFragment.h(this.a).setOnLastItemVisibleListener(TweetListFragment.i(this.a));
                return;
            }
            TweetListFragment.j(this.a);
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
