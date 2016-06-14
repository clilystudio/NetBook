package com.clilystudio.netbook.ui.game;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.GamePostRoot$GamePost;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;

final class n extends W<GamePostRoot$GamePost> {
    final /* synthetic */ GameDetailActivity a;

    public n(GameDetailActivity gameDetailActivity, LayoutInflater layoutInflater) {
        this.a = gameDetailActivity;
        super(layoutInflater, 2130903278);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n2, Object object) {
        GamePostRoot$GamePost gamePostRoot$GamePost = (GamePostRoot$GamePost) object;
        String string = gamePostRoot$GamePost.get_id();
        Author author = gamePostRoot$GamePost.getAuthor();
        ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), 2130837614);
        if (GameDetailActivity.m(this.a)) {
            String string2 = author.getGender();
            this.a(1, false);
            if ("male".equals(string2)) {
                ((ImageView) this.a(1, ImageView.class)).setImageLevel(2);
            } else if ("female".equals(string2)) {
                ((ImageView) this.a(1, ImageView.class)).setImageLevel(3);
            } else {
                ((ImageView) this.a(1, ImageView.class)).setImageLevel(4);
            }
        } else {
            String string3 = author.getType();
            if ("official".equals(string3)) {
                this.a(1, false);
                ((ImageView) this.a(1, ImageView.class)).setImageLevel(0);
            } else if ("doyen".equals(string3)) {
                this.a(1, false);
                ((ImageView) this.a(1, ImageView.class)).setImageLevel(1);
            } else {
                this.a(1, true);
            }
        }
        this.a(2, author.getNickname());
        this.a(3, t.e(gamePostRoot$GamePost.getCreated()));
        View view = (View) this.a(4, ImageView.class);
        view.setOnClickListener(new o(this, view, string));
        this.a(5, gamePostRoot$GamePost.getContent());
        this.a(6, "" + gamePostRoot$GamePost.getCommentCount());
        TextView textView = (TextView) this.a(8, TextView.class);
        ImageView imageView = (ImageView) this.a(7, ImageView.class);
        textView.setText("" + gamePostRoot$GamePost.getLikeCount());
        GameDetailActivity.a(this.a, string, imageView);
        imageView.setOnClickListener(new p(this, textView, gamePostRoot$GamePost, string));
        String string4 = gamePostRoot$GamePost.getState();
        ImageView imageView2 = (ImageView) this.a(9, ImageView.class);
        if ("distillate".equals(string4)) {
            imageView2.setVisibility(View.VISIBLE);
            imageView2.setImageResource(2130837812);
            return;
        }
        if ("hot".equals(string4)) {
            imageView2.setVisibility(View.VISIBLE);
            imageView2.setImageResource(2130837813);
            return;
        }
        imageView2.setVisibility(View.GONE);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493662, 2131493663, 2131493664, 2131493665, 2131493666, 2131493667, 2131493670, 2131493671, 2131493672, 2131493669};
    }
}
