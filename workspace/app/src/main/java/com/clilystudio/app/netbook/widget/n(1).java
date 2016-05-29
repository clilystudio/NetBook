package com.clilystudio.app.netbook.widget;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.model.ResultStatus;

final class n extends e<String, Void, ResultStatus> {
    private n(CommentItemView paramCommentItemView) {
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        if (CommentItemView.b(this.a) != null)
            CommentItemView.b(this.a).setLikedInView(true);
        CommentItemView.c(this.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.n
 * JD-Core Version:    0.6.2
 */