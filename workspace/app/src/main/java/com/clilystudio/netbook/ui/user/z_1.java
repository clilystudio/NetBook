package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class z
        extends com.clilystudio.netbook.a_pack.e<String, Void, Topic> {
    private /* synthetic */ MyFavTopicFragment a;

    private z(MyFavTopicFragment myFavTopicFragment) {
        this.a = myFavTopicFragment;
    }

    /* synthetic */ z(MyFavTopicFragment myFavTopicFragment, byte by) {
        this(myFavTopicFragment);
    }

    private /* varargs */ Topic a(String... arrstring) {
        if (!this.isCancelled()) {
            try {
                b.a();
                Topic topic = b.b().d(arrstring[0], MyFavTopicFragment.k(this.a));
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
        MyFavTopicFragment.a(this.a).setVisibility(8);
        MyFavTopicFragment.c(this.a).setVisibility(8);
        MyFavTopicFragment.i(this.a).setVisibility(8);
        MyFavTopicFragment.d(this.a).n();
        if (this.isCancelled()) return;
        if (topic != null) {
            if (topic.isOk()) {
                TopicPost[] arrtopicPost = topic.getPosts();
                int n = arrtopicPost.length;
                List<TopicPost> list = Arrays.asList(arrtopicPost);
                MyFavTopicFragment.a(this.a, MyFavTopicFragment.k(this.a) + list.size());
                MyFavTopicFragment.h(this.a).addAll(list);
                MyFavTopicFragment.l(this.a).a(MyFavTopicFragment.h(this.a));
                MyFavTopicFragment.b(this.a, n);
                if (n > 0) {
                    if (n >= 10) {
                        if (n != 10) return;
                        MyFavTopicFragment.d(this.a).setOnLastItemVisibleListener(MyFavTopicFragment.j(this.a));
                        return;
                    }
                } else if (MyFavTopicFragment.k(this.a) == 0) {
                    MyFavTopicFragment.a(this.a).setVisibility(0);
                    MyFavTopicFragment.a(this.a).setText("\u4f60\u8fd8\u6ca1\u6709\u6536\u85cf\u54e6");
                }
                MyFavTopicFragment.d(this.a).setOnLastItemVisibleListener(null);
                return;
            }
            MyFavTopicFragment.d(this.a).setOnLastItemVisibleListener(MyFavTopicFragment.j(this.a));
            e.a((Activity) this.a.getActivity(), "\u52a0\u8f7d\u5931\u8d25\uff0c\u4e0a\u62c9\u53ef\u91cd\u65b0\u52a0\u8f7d");
            return;
        }
        MyFavTopicFragment.d(this.a).setOnLastItemVisibleListener(MyFavTopicFragment.j(this.a));
        e.a((Activity) this.a.getActivity(), "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
