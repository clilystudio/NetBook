package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.GamePostRoot.GamePost;
import com.clilystudio.netbook.ui.post.PostDetailActivity;

final class e
        implements AdapterView.OnItemClickListener {
    e(GameDetailActivity paramGameDetailActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - GameDetailActivity.b(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < GameDetailActivity.c(this.a).size())) {
            GamePostRoot.GamePost localGamePost = (GamePostRoot.GamePost) GameDetailActivity.c(this.a).get(i);
            Intent localIntent = PostDetailActivity.a(this.a, localGamePost.get_id(), "game");
            this.a.startActivity(localIntent);
        }
    }
}

