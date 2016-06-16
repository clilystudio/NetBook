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
        super(layoutInflater, R.layout.list_item_new_topic);
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
            coverView.setImageResource(R.drawable.book_help_cover_default);
        } else if ("ramble".equals(string2)) {
            coverView.setImageResource(R.drawable.discuss_cover_default);
        } else {
            coverView.setImageUrl(topicPost.getBook().getFullCover(), R.drawable.cover_default);
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
        return new int[]{R.id.new_topic_listitem_cover, R.id.new_topic_listitem_user, R.id.time, R.id.title, R.id.new_topic_listitem_vote, R.id.new_topic_listitem_comment, R.id.new_topic_listitem_label_status};
    }
}
