package com.clilystudio.netbook.adapter;

import android.content.Context;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.GirlTopicSummary;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.PostFlag;

public final class o extends W<GirlTopicSummary> {
    private boolean a;
    private boolean b = false;

    public o(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_post);
        Context context = layoutInflater.getContext();
        this.a = am.m(context);
        this.b = a.r(context, "community_user_gender_icon_toggle");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, final GirlTopicSummary girlTopicSummary) {
        Author author = girlTopicSummary.getAuthor();
        final SmartImageView smartImageView = (SmartImageView) this.a(0, SmartImageView.class);
        if (this.a) {
            smartImageView.setImageResource(R.drawable.avatar_default);
        } else {
            smartImageView.setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
            smartImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    smartImageView.getContext().startActivity(com.clilystudio.netbook.util.e.a(smartImageView.getContext(),girlTopicSummary.getAuthor()));
                }
            });
        }
        if (girlTopicSummary.getVoteCount() > 0 || girlTopicSummary.getTitle().equals("vote")) {
            girlTopicSummary.getType();
        }
        this.a(1, author.getNickname());
        this.a(2, "lv." + author.getLv());
        this.a(3, t.e(girlTopicSummary.getCreated()));
        this.a(4, girlTopicSummary.getTitle());
        TextView textView = (TextView) this.a(5, TextView.class);
        if ("vote".equals(girlTopicSummary.getType())) {
            textView.setText(String.valueOf(girlTopicSummary.getVoteCount()));
            textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_vote, 0, 0, 0);
        } else {
            textView.setText(String.valueOf(girlTopicSummary.getCommentCount()));
            textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_message, 0, 0, 0);
        }
        TextView textView2 = (TextView) this.a(6, TextView.class);
        textView2.setVisibility(View.VISIBLE);
        textView2.setText(String.valueOf(girlTopicSummary.getLikeCount()));
        if (this.b) {
            String string = author.getGender();
            if ("male".equals(string)) {
                ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(2);
            } else if ("female".equals(string)) {
                ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(3);
            } else {
                ((ImageView) this.a(7, ImageView.class)).setVisibility(View.VISIBLE);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(4);
            }
        } else {
            String string = author.getType();
            if ("official".equals(string)) {
                this.a(7, false);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(0);
            } else if ("doyen".equals(string)) {
                this.a(7, false);
                ((ImageView) this.a(7, ImageView.class)).setImageLevel(1);
            } else {
                this.a(7, true);
            }
        }
        String string = girlTopicSummary.getState();
        if (((PostFlag) this.a(8, PostFlag.class)).a(string)) {
            this.a(3, true);
            this.a(8, false);
            return;
        }
        this.a(3, false);
        this.a(8, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.avatar, R.id.user, R.id.lv, R.id.time, R.id.title, R.id.comment_count, R.id.like_count, R.id.avatar_verify, R.id.post_flag};
    }
}
