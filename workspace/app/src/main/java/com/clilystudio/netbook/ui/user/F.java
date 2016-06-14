package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

final class F extends com.clilystudio.netbook.a_pack.e<String, Void, Topic> {
    private /* synthetic */ MyTopicFragment a;

    private F(MyTopicFragment myTopicFragment) {
        this.a = myTopicFragment;
    }

    /* synthetic */ F(MyTopicFragment myTopicFragment, byte by) {
        this(myTopicFragment);
    }

    private /* varargs */ Topic a(String... arrstring) {
        if (!this.isCancelled()) {
            try {
                b.a();
                Topic topic = b.b().e(arrstring[0], MyTopicFragment.h(this.a).size());
                return topic;
            } catch (Exception var2_3) {
                var2_3.printStackTrace();
            }
        }
        return null;
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
        MyTopicFragment.a(this.a).setVisibility(8);
        MyTopicFragment.c(this.a).setVisibility(8);
        MyTopicFragment.i(this.a).setVisibility(8);
        MyTopicFragment.d(this.a).n();
        if (this.isCancelled()) return;
        if (topic != null && topic.getPosts() != null) {
            TopicPost[] arrtopicPost = topic.getPosts();
            int n = arrtopicPost.length;
            if (n > 0) {
                for (TopicPost topicPost : arrtopicPost) {
                    if (topicPost.getBook() == null) continue;
                    MyTopicFragment.h(this.a).add(topicPost);
                }
                MyTopicFragment.k(this.a).a(MyTopicFragment.h(this.a));
                MyTopicFragment.a(this.a, MyTopicFragment.h(this.a).size());
                if (n >= 10) {
                    MyTopicFragment.d(this.a).setOnLastItemVisibleListener(MyTopicFragment.j(this.a));
                    return;
                }
            }
            MyTopicFragment.d(this.a).setOnLastItemVisibleListener(null);
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
