package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;

import java.util.Collection;

final class dN extends com.clilystudio.netbook.a.e {

    private TweetListFragment a;

    dN(TweetListFragment TweetListFragment1, byte byte2) {
        this(TweetListFragment1);
    }

    private dN(TweetListFragment TweetListFragment1) {
        a = TweetListFragment1;
    }

    private transient Topic a(String[] String_1darray1) {
        Topic Topic4;

        try {
            com.clilystudio.netbook.api.b.a();
            Topic4 = com.clilystudio.netbook.api.b.b().b(String_1darray1[0], String_1darray1[1], TweetListFragment.e(a).size(), 20);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return Topic4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (Topic) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            TweetListFragment.f(a);
            if (!isCancelled()) {
                if (Object2 != null && ((Topic) Object2).getPosts() != null) {
                    TopicPost[] TopicPost_1darray3 = ((Topic) Object2).getPosts();
                    int int4 = TopicPost_1darray3.length;

                    if (int4 > 0) {
                        int int5 = TopicPost_1darray3.length;
                        int int6;

                        for (int6 = 0; int6 < int5; ++int6) {
                            TopicPost TopicPost7 = TopicPost_1darray3[int6];

                            TweetListFragment.e(a).add(TopicPost7);
                        }
                        TweetListFragment.g(a).a((Collection) TweetListFragment.e(a));
                        if (int4 >= 20) {
                            TweetListFragment.h(a).setOnLastItemVisibleListener(TweetListFragment.i(a));
                            return;
                        }
                    }
                    TweetListFragment.h(a).setOnLastItemVisibleListener(null);
                } else
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u91CD\u8BD5");
                return;
            }
        }
    }
}
