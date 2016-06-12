package com.clilystudio.netbook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.model.PostComment;

final class m implements DialogInterface$OnClickListener {

    private PostComment a;
    private CommentItemView b;
    m(CommentItemView CommentItemView1, PostComment PostComment2) {
        b = CommentItemView1;
        a = PostComment2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        CommentItemView.a(b).a(a.toRepliedInfo(), CommentItemView.d(b));
    }
}
