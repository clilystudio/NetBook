package com.clilystudio.netbook.widget;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.PostComment;

final class m implements DialogInterface.OnClickListener {
    private /* synthetic */ PostComment a;
    private /* synthetic */ CommentItemView b;

    m(CommentItemView commentItemView, PostComment postComment) {
        this.b = commentItemView;
        this.a = postComment;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        CommentItemView.a(this.b).a(this.a.toRepliedInfo(), CommentItemView.d(this.b));
    }
}
