package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.PostDetailComment;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class cv extends com.clilystudio.netbook.a.e {

    private PostDetailActivity a;

    cv(PostDetailActivity PostDetailActivity1, byte byte2) {
        this(PostDetailActivity1);
    }

    private cv(PostDetailActivity PostDetailActivity1) {
        a = PostDetailActivity1;
    }

    private transient PostDetailComment a(String[] String_1darray1) {
        PostDetailComment PostDetailComment3;

        try {
            PostDetailComment3 = com.clilystudio.netbook.api.b.b().e(String_1darray1[0], PostDetailActivity.c(a).getCount(), 30);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return PostDetailComment3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (PostDetailComment) Object1;

        super.onPostExecute(Object2);
        a.b.setOnLastItemListener(PostDetailActivity.d(a));
        if (Object2 != null && ((PostDetailComment) Object2).isOk()) {
            Object Object3;

            PostDetailActivity.e(a).setVisibility(8);
            Object3 = Arrays.asList(((PostDetailComment) Object2).getComments());
            PostDetailActivity.f(a).addAll((Collection) Object3);
            PostDetailActivity.c(a).a((Collection) PostDetailActivity.f(a));
            if (((List) Object3).size() < 30) {
                a.b.removeFooterView(PostDetailActivity.e(a));
                a.b.setOnLastItemListener(null);
            }
        } else {
            PostDetailActivity.g(a);
            com.clilystudio.netbook.util.e.a((Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8005\u7A0D\u540E\u518D\u8BD5");
        }
    }
}
