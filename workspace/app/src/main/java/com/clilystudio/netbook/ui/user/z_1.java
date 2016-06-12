package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class z extends com.clilystudio.netbook.a.e {

    private MyFavTopicFragment a;

    z(MyFavTopicFragment MyFavTopicFragment1, byte byte2) {
        this(MyFavTopicFragment1);
    }

    private z(MyFavTopicFragment MyFavTopicFragment1) {
        a = MyFavTopicFragment1;
    }

    private transient Topic a(String[] String_1darray1) {
        if (!isCancelled()) {
            try {
                Topic Topic4;

                com.clilystudio.netbook.api.b.a();
                Topic4 = com.clilystudio.netbook.api.b.b().d(String_1darray1[0], MyFavTopicFragment.k(a));
            } catch (Exception Exception2) {
                Exception2.printStackTrace();
            }
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (Topic) Object1;

        super.onPostExecute(Object2);
        MyFavTopicFragment.a(a).setVisibility(8);
        MyFavTopicFragment.c(a).setVisibility(8);
        MyFavTopicFragment.i(a).setVisibility(8);
        MyFavTopicFragment.d(a).n();
        if (!isCancelled()) {
            if (Object2 != null) {
                if (((Topic) Object2).isOk()) {
                    TopicPost[] TopicPost_1darray3 = ((Topic) Object2).getPosts();
                    int int4 = TopicPost_1darray3.length;
                    Object Object5 = Arrays.asList(TopicPost_1darray3);

                    MyFavTopicFragment.a(a, MyFavTopicFragment.k(a) + ((List) Object5).size());
                    MyFavTopicFragment.h(a).addAll((Collection) Object5);
                    MyFavTopicFragment.l(a).a((Collection) MyFavTopicFragment.h(a));
                    MyFavTopicFragment.b(a, int4);
                    if (int4 > 0) {
                        if (int4 >= 10) {
                            if (int4 == 10)
                                MyFavTopicFragment.d(a).setOnLastItemVisibleListener(MyFavTopicFragment.j(a));
                            return;
                        }
                    } else if (MyFavTopicFragment.k(a) == 0) {
                        MyFavTopicFragment.a(a).setVisibility(0);
                        MyFavTopicFragment.a(a).setText((CharSequence) "\u4F60\u8FD8\u6CA1\u6709\u6536\u85CF\u54E6");
                    }
                    MyFavTopicFragment.d(a).setOnLastItemVisibleListener(null);
                } else {
                    MyFavTopicFragment.d(a).setOnLastItemVisibleListener(MyFavTopicFragment.j(a));
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u4E0A\u62C9\u53EF\u91CD\u65B0\u52A0\u8F7D");
                }
            } else {
                MyFavTopicFragment.d(a).setOnLastItemVisibleListener(MyFavTopicFragment.j(a));
                com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
            }
            return;
        }
    }
}
