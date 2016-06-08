package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.model.CommentDetail;
import com.clilystudio.netbook.ui.post.f;
import com.clilystudio.netbook.util.e;

final class o extends f {
    public o(CommentItemView paramCommentItemView, Activity paramActivity) {
        super(paramActivity);
    }

    public final void a(CommentDetail paramCommentDetail) {
        if ((paramCommentDetail != null) && (paramCommentDetail.getComment() != null)) {
            CommentItemView.a(this.a, paramCommentDetail.getComment());
            return;
        }
        e.a((Activity) this.a.getContext(), "楼层不存在");
    }
}

