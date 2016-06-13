package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.model.CommentDetail;
import com.clilystudio.netbook.ui.post.f;
import com.clilystudio.netbook.util.e;

final class o
        extends f {
    private /* synthetic */ CommentItemView a;

    public o(CommentItemView commentItemView, Activity activity) {
        this.a = commentItemView;
        super(activity);
    }

    @Override
    public final void a(CommentDetail commentDetail) {
        if (commentDetail != null && commentDetail.getComment() != null) {
            CommentItemView.a(this.a, commentDetail.getComment());
            return;
        }
        e.a((Activity) this.a.getContext(), "\u697c\u5c42\u4e0d\u5b58\u5728");
    }
}
