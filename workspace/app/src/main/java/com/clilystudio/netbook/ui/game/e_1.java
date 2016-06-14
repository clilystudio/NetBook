package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.GamePostRoot$GamePost;
import com.clilystudio.netbook.ui.post.PostDetailActivity;

final class e implements AdapterView.OnItemClickListener {
    private /* synthetic */ GameDetailActivity a;

    e(GameDetailActivity gameDetailActivity) {
        this.a = gameDetailActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
        int n3 = n2 - GameDetailActivity.b(this.a).getHeaderViewsCount();
        if (n3 >= 0 && n3 < GameDetailActivity.c(this.a).size()) {
            GamePostRoot$GamePost gamePostRoot$GamePost = (GamePostRoot$GamePost) GameDetailActivity.c(this.a).get(n3);
            Intent intent = PostDetailActivity.a(this.a, gamePostRoot$GamePost.get_id(), "game");
            this.a.startActivity(intent);
        }
    }
}
