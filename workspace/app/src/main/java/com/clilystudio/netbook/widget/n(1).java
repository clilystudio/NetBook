package com.clilystudio.netbook.widget;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.ResultStatus;

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

