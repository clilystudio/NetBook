package com.clilystudio.netbook.adapter;

import android.content.Context;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.PostFlag;

public final class j extends W<TopicPost> {
    private boolean a;
    private boolean b = false;

    public j(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_post);
        Context context = layoutInflater.getContext();
        this.a = am.m(context);
        this.b = a.r(context, "community_user_gender_icon_toggle");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        TopicPost topicPost = (TopicPost) object;
        Author author = topicPost.getAuthor();
        if (this.a) {
            ((SmartImageView) this.a(0, SmartImageView.class)).setImageResource(R.drawable.avatar_default);
        } else {
            ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
            ((SmartImageView) this.a(0, SmartImageView.class)).setOnClickListener(new k(this, topicPost));
        }
        this.a(1, author.getNickname());
        this.a(2, "lv." + author.getLv());
        this.a(4, topicPost.getTitle());
        String string = topicPost.getType();
        TextView textView = (TextView) this.a(5, TextView.class);
        if ("vote".equals(string)) {
            textView.setText("" + topicPost.getVoteCount());
            textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_vote, 0, 0, 0);
        } else {
            textView.setText("" + topicPost.getCommentCount());
            textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_message, 0, 0, 0);
        }
        TextView textView2 = (TextView) this.a(6, TextView.class);
        textView2.setVisibility(View.VISIBLE);
        textView2.setText("" + topicPost.likeCount);
        if (this.b) {
            String string2 = author.getGender();
            if ("male".equals(string2)) {
                ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(2);
            } else if ("female".equals(string2)) {
                ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(3);
            } else {
                ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(4);
            }
        } else {
            String string3 = author.getType();
            if ("official".equals(string3)) {
                this.a(7, false);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(0);
            } else if ("doyen".equals(string3)) {
                this.a(7, false);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(1);
            } else {
                this.a(7, true);
            }
        }
        String string4 = topicPost.getState();
        if (((PostFlag) this.a(8, PostFlag.class)).a(string4)) {
            this.a(3, true);
            this.a(8, false);
            return;
        }
        this.a(3, false);
        this.a(8, true);
        this.a(3, t.e(topicPost.getCreated()));
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.avatar, R.id.user, R.id.lv, R.id.time, R.id.title, R.id.comment_count, R.id.like_count, R.id.avatar_verify, R.id.post_flag};
    }
}
