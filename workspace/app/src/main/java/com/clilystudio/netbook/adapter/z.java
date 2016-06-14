package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;

import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CommentItemView;

public final class z extends W<PostComment> {
    public z(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903312);
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        PostComment postComment = (PostComment) object;
        CommentItemView commentItemView = (CommentItemView) ((View) this.a(10, View.class)).getParent();
        this.a(3, false);
        ((ImageView) this.a(0, ImageView.class)).setOnClickListener(new A(this, postComment));
        commentItemView.b();
        commentItemView.a(postComment, n);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493761, 2131493764, 2131493765, 2131493769, 2131493766, 2131493763, 2131493767, 2131493759, 2131493772, 2131493762, 2131493577, 2131493432, 2131493773};
    }
}
