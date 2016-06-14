package com.clilystudio.netbook.widget;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.PostComment;

final class l implements DialogInterface.OnClickListener {
    private /* synthetic */ String[] a;
    private /* synthetic */ PostComment b;
    private /* synthetic */ CommentItemView c;

    l(CommentItemView commentItemView, String[] arrstring, PostComment postComment) {
        this.c = commentItemView;
        this.a = arrstring;
        this.b = postComment;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        if (this.a.length == 2 && n == 0) {
            String string = CommentItemView.a(this.c).n();
            String string2 = this.b.getReplyTo().get_id();
            new o(this.c, CommentItemView.a(this.c)).b(string, string2);
        } else if (this.a.length == 1 || n == 1) {
            CommentItemView.a(this.c).a(this.b.get_id());
        }
        CommentItemView.a(this.c).k();
    }
}
