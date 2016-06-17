package com.clilystudio.netbook.ui.game;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.GamePostRoot;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;

final class n extends W<GamePostRoot.GamePost> {
    final /* synthetic */ GameDetailActivity a;

    public n(GameDetailActivity gameDetailActivity, LayoutInflater layoutInflater) {
        this.a = gameDetailActivity;
        super(layoutInflater, R.layout.list_item_game_detail);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n2, final GamePostRoot.GamePost gamePost) {
        final String string = gamePost.get_id();
        Author author = gamePost.getAuthor();
        ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
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
        this.a(3, t.e(gamePost.getCreated()));
        final View view = (View) this.a(4, ImageView.class);
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                GameDetailActivity.a(n.this.a, view, string);
            }
        });
        this.a(5, gamePost.getContent());
        this.a(6, "" + gamePost.getCommentCount());
        final TextView textView = (TextView) this.a(8, TextView.class);
        ImageView imageView = (ImageView) this.a(7, ImageView.class);
        textView.setText("" + gamePost.getLikeCount());
        GameDetailActivity.a(this.a, string, imageView);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                GameDetailActivity.a(n.this.a, view, textView, gamePost.getLikeCount(), string);
            }
        });
        String string4 = gamePost.getState();
        ImageView imageView2 = (ImageView) this.a(9, ImageView.class);
        if ("distillate".equals(string4)) {
            imageView2.setVisibility(View.VISIBLE);
            imageView2.setImageResource(R.drawable.game_center_post_good);
            return;
        }
        if ("hot".equals(string4)) {
            imageView2.setVisibility(View.VISIBLE);
            imageView2.setImageResource(R.drawable.game_center_post_hot);
            return;
        }
        imageView2.setVisibility(View.GONE);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.game_detail_item_avatar, R.id.game_detail_item_avatar_verify, R.id.game_detail_item_name, R.id.game_detail_item_time, R.id.game_detail_item_more, R.id.game_detail_item_content, R.id.game_detail_item_comment, R.id.game_detail_item_like_btn, R.id.game_detail_item_like, R.id.game_detail_item_flag};
    }
}
