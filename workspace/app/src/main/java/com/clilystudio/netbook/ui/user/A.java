package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class A
        extends com.clilystudio.netbook.a_pack.e<String, Void, Topic> {
    private /* synthetic */ MyFavTopicFragment a;

    private A(MyFavTopicFragment myFavTopicFragment) {
        this.a = myFavTopicFragment;
    }

    /* synthetic */ A(MyFavTopicFragment myFavTopicFragment, byte by) {
        this(myFavTopicFragment);
    }

    private static /* varargs */ Topic a(String... arrstring) {
        try {
            b.a();
            Topic topic = b.b().d(arrstring[0], 0);
            return topic;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return A.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        Topic topic = (Topic) object;
        super.onPostExecute(topic);
        MyFavTopicFragment.a(this.a).setVisibility(8);
        MyFavTopicFragment.c(this.a).setVisibility(8);
        MyFavTopicFragment.i(this.a).setVisibility(8);
        MyFavTopicFragment.d(this.a).n();
        MyFavTopicFragment.d(this.a).setOnLastItemVisibleListener(MyFavTopicFragment.j(this.a));
        if (topic != null) {
            if (topic.isOk()) {
                MyFavTopicFragment.a(this.a, 0);
                MyFavTopicFragment.h(this.a).clear();
                TopicPost[] arrtopicPost = topic.getPosts();
                int n = arrtopicPost.length;
                List<TopicPost> list = Arrays.asList(arrtopicPost);
                MyFavTopicFragment.a(this.a, MyFavTopicFragment.k(this.a) + list.size());
                MyFavTopicFragment.h(this.a).addAll(list);
                MyFavTopicFragment.l(this.a).a(MyFavTopicFragment.h(this.a));
                MyFavTopicFragment.b(this.a, n);
                if (n < 10) {
                    MyFavTopicFragment.d(this.a).setOnLastItemVisibleListener(null);
                    if (n == 0) {
                        MyFavTopicFragment.a(this.a).setVisibility(0);
                        MyFavTopicFragment.a(this.a).setText("\u4f60\u8fd8\u6ca1\u6709\u6536\u85cf\u54e6\uff0c\u5feb\u53bb\u6536\u85cf\u4e00\u4e2a\u5427");
                    }
                }
                return;
            }
            e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u4e0b\u62c9\u5237\u65b0\u91cd\u8bd5");
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
    }
}
