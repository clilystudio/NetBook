package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.widget.ImageView;

import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;

import java.util.Date;

public final class F extends W<TopicPost> {
    public F(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903290);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        String string;
        TopicPost topicPost = (TopicPost) object;
        this.a(1, topicPost.getAuthor().getNickname());
        this.a(2, t.e((Date) topicPost.getCreated()));
        this.a(3, topicPost.getTitle());
        String string2 = topicPost.getBlock();
        CoverView coverView = (CoverView) this.a(0, CoverView.class);
        if ("help".equals(string2)) {
            coverView.setImageResource(2130837720);
        } else if ("ramble".equals(string2)) {
            coverView.setImageResource(2130837781);
        } else {
            coverView.setImageUrl(topicPost.getBook().getFullCover(), 2130837766);
        }
        if ("vote".equals(topicPost.getType())) {
            this.a(4, false);
            this.a(5, true);
            this.a(4, String.valueOf(topicPost.getVoteCount()));
        } else {
            this.a(4, true);
            this.a(5, false);
            this.a(5, String.valueOf(topicPost.getCommentCount()));
        }
        if ("focus".equals(string = topicPost.getState())) {
            this.a(6, false);
            ((ImageView) this.a(6, ImageView.class)).setImageLevel(0);
            return;
        }
        if ("hot".equals(string)) {
            this.a(6, false);
            ((ImageView) this.a(6, ImageView.class)).setImageLevel(1);
            return;
        }
        this.a(6, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493706, 2131493707, 2131492935, 2131492936, 2131493708, 2131493709, 2131493710};
    }
}
