package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.model.ResultStatus;

final class n extends com.clilystudio.netbook.a.e {

    private CommentItemView a;

    n(CommentItemView CommentItemView1, byte byte2) {
        this(CommentItemView1);
    }

    private n(CommentItemView CommentItemView1) {
        a = CommentItemView1;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        String[] String_1darray2 = (String[]) Object_1darray1;

        return com.clilystudio.netbook.api.b.b().o(CommentItemView.a(a).n(), String_1darray2[0], String_1darray2[1]);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (ResultStatus) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && !((ResultStatus) Object2).isOk())
            com.clilystudio.netbook.util.e.a((Activity) CommentItemView.a(a), "\u5DF2\u540C\u611F");
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        if (CommentItemView.b(a) != null)
            CommentItemView.b(a).setLikedInView(true);
        CommentItemView.c(a);
    }
}
