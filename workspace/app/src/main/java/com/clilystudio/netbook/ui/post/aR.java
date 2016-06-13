package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

import java.util.Collection;

final class aR
        extends com.clilystudio.netbook.a.e<String, Void, Topic> {
    private /* synthetic */ BookTopicListFragment a;

    private aR(BookTopicListFragment bookTopicListFragment) {
        this.a = bookTopicListFragment;
    }

    /* synthetic */ aR(BookTopicListFragment bookTopicListFragment, byte by) {
        this(bookTopicListFragment);
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
        return aR.a((String[]) arrobject);
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
        this.a.c();
        if (topic != null && topic.getPosts() != null) {
            BookTopicListFragment.f(this.a);
            BookTopicListFragment.d(this.a).clear();
            TopicPost[] arrtopicPost = topic.getPosts();
            int n = arrtopicPost.length;
            if (n > 0) {
                for (TopicPost topicPost : arrtopicPost) {
                    BookTopicListFragment.d(this.a).add(topicPost);
                }
                BookTopicListFragment.g(this.a).a((Collection) BookTopicListFragment.d(this.a));
                if (n < 20) {
                    this.a.a.setOnLastItemVisibleListener(null);
                    return;
                }
                this.a.a.setOnLastItemVisibleListener(BookTopicListFragment.h(this.a));
                return;
            }
            this.a.b();
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
