package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

final class G extends com.clilystudio.netbook.a_pack.e<String, Void, Topic> {
    private /* synthetic */ MyTopicFragment a;

    private G(MyTopicFragment myTopicFragment) {
        this.a = myTopicFragment;
    }

    /* synthetic */ G(MyTopicFragment myTopicFragment, byte by) {
        this(myTopicFragment);
    }

    private static /* varargs */ Topic a(String... arrstring) {
        try {
            b.a();
            Topic topic = b.b().e(arrstring[0], 0);
            return topic;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return G.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        Topic topic = (Topic) object;
        super.onPostExecute(topic);
        MyTopicFragment.a(this.a).setVisibility(8);
        MyTopicFragment.c(this.a).setVisibility(8);
        MyTopicFragment.i(this.a).setVisibility(8);
        MyTopicFragment.d(this.a).n();
        if (topic != null && topic.getPosts() != null) {
            MyTopicFragment.h(this.a).clear();
            TopicPost[] arrtopicPost = topic.getPosts();
            int n = arrtopicPost.length;
            if (n > 0) {
                for (TopicPost topicPost : arrtopicPost) {
                    if (topicPost.getBook() == null) continue;
                    MyTopicFragment.h(this.a).add(topicPost);
                }
                if (n < 10) {
                    MyTopicFragment.d(this.a).setOnLastItemVisibleListener(null);
                } else {
                    MyTopicFragment.d(this.a).setOnLastItemVisibleListener(MyTopicFragment.j(this.a));
                }
            } else {
                MyTopicFragment.a(this.a).setVisibility(0);
                MyTopicFragment.a(this.a).setText("\u4f60\u8fd8\u6ca1\u6709\u53d1\u5e03\u54e6\uff0c\u5feb\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427");
            }
            MyTopicFragment.k(this.a).a(MyTopicFragment.h(this.a));
            MyTopicFragment.a(this.a, MyTopicFragment.h(this.a).size());
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
    }
}
