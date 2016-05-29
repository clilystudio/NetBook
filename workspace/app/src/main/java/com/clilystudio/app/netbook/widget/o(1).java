package com.clilystudio.app.netbook.widget;

import android.app.Activity;

import com.clilystudio.app.netbook.model.CommentDetail;
import com.clilystudio.app.netbook.ui.post.f;
import com.clilystudio.app.netbook.util.e;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.o
 * JD-Core Version:    0.6.2
 */