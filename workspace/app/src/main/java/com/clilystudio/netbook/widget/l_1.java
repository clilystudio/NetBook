package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.model.PostComment;

final class l implements DialogInterface$OnClickListener {

    private String[] a;
    private PostComment b;
    private CommentItemView c;
    l(CommentItemView CommentItemView1, String[] String_1darray2, PostComment PostComment3) {
        c = CommentItemView1;
        a = String_1darray2;
        b = PostComment3;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        if (a.length == 2 && int2 == 0) {
            String String3 = CommentItemView.a(c).n();
            String String4 = b.getReplyTo().get_id();

            new o(c, (Activity) CommentItemView.a(c)).b(new String[]{String3, String4});
        } else if (a.length == 1 || int2 == 1)
            CommentItemView.a(c).a(b.get_id());
        CommentItemView.a(c).k();
    }
}
