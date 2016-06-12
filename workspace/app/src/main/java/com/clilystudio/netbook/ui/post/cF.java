package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.PostDetailComment;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class cF extends com.clilystudio.netbook.a.e {

    private ReviewActivity a;

    cF(ReviewActivity ReviewActivity1, byte byte2) {
        this(ReviewActivity1);
    }

    private cF(ReviewActivity ReviewActivity1) {
        a = ReviewActivity1;
    }

    private transient PostDetailComment a(String[] String_1darray1) {
        PostDetailComment PostDetailComment3;

        try {
            if (String_1darray1.length > 1)
                return com.clilystudio.netbook.api.b.b().l(String_1darray1[0], String_1darray1[1]);
            else
                PostDetailComment3 = com.clilystudio.netbook.api.b.b().l(String_1darray1[0], null);
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
        if (Object2 != null && ((PostDetailComment) Object2).isOk()) {
            Object Object3;

            a.b.setOnLastItemListener(ReviewActivity.c(a));
            ReviewActivity.d(a).setVisibility(8);
            Object3 = Arrays.asList(((PostDetailComment) Object2).getComments());
            ReviewActivity.e(a).addAll((Collection) Object3);
            ReviewActivity.f(a).a((Collection) ReviewActivity.e(a));
            if (((List) Object3).size() < 30) {
                a.b.removeFooterView(ReviewActivity.d(a));
                a.b.setOnLastItemListener(null);
            }
        } else {
            a.b.setOnLastItemListener(null);
            ReviewActivity.g(a);
            com.clilystudio.netbook.util.e.a((Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8005\u7A0D\u540E\u518D\u8BD5");
        }
    }
}
