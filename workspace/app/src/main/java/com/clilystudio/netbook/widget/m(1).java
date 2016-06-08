package com.clilystudio.netbook.widget;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.PostComment;

final class m
        implements DialogInterface.OnClickListener {
    m(CommentItemView paramCommentItemView, PostComment paramPostComment) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        CommentItemView.a(this.b).a(this.a.toRepliedInfo(), CommentItemView.d(this.b));
    }
}

