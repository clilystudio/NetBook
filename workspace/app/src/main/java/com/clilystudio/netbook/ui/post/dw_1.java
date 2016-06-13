package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.User;

final class dw
        implements View.OnClickListener {
    private /* synthetic */ User a;
    private /* synthetic */ TweetDetailActivity b;

    dw(TweetDetailActivity tweetDetailActivity, User user) {
        this.b = tweetDetailActivity;
        this.a = user;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = OtherUserActivity.a(this.b);
        intent.putExtra("USER_ID", this.a.getId());
        intent.putExtra("USER_NAME", this.a.getNickname());
        this.b.startActivity(intent);
    }
}
