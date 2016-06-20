package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CommentItemView;

public final class z extends W<PostComment> {
    public z(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_topic_comment);
    }

    @Override
    protected final /* synthetic */ void a(int n, final PostComment postComment) {
        CommentItemView commentItemView = (CommentItemView) ((View) this.a(10, View.class)).getParent();
        this.a(3, false);
        ((ImageView) this.a(0, ImageView.class)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                v.getContext().startActivity(com.clilystudio.netbook.util.e.a(v.getContext(), postComment.getAuthor()));
            }
        });
        commentItemView.b();
        commentItemView.a(postComment, n);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.post_comment_item_avatar, R.id.post_comment_item_name, R.id.post_comment_item_lv, R.id.post_comment_item_time, R.id.post_comment_item_content, R.id.post_comment_item_floor, R.id.post_comment_item_reply, R.id.visible_item, R.id.like, R.id.post_comment_item_avatar_verify, R.id.container, R.id.more, R.id.more_divider};
    }
}
