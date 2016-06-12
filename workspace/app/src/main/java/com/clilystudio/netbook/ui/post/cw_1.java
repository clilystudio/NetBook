package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.PostDetail;

final class cw extends e {

    private PostDetailActivity a;

    cw(PostDetailActivity PostDetailActivity1, byte byte2) {
        this(PostDetailActivity1);
    }

    private cw(PostDetailActivity PostDetailActivity1) {
        a = PostDetailActivity1;
    }

    private transient PostDetail a(String[] String_1darray1) {
        PostDetail PostDetail3;

        try {
            PostDetail3 = com.clilystudio.netbook.api.b.b().H(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return PostDetail3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (PostDetail) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((PostDetail) Object2).getPost() != null) {
            PostDetailActivity.a(a, ((PostDetail) Object2).getPost());
            a.f();
            PostDetailActivity.b(a, PostDetailActivity.a(a));
            PostDetailActivity.a(a, PostDetailActivity.a(a).getVotes());
            PostDetailActivity.b(a);
        } else
            a.h();
    }
}
