package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.User;

final class dw
        implements View.OnClickListener {
    dw(TweetDetailActivity paramTweetDetailActivity, User paramUser) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = OtherUserActivity.a(this.b);
        localIntent.putExtra("USER_ID", this.a.getId());
        localIntent.putExtra("USER_NAME", this.a.getNickname());
        this.b.startActivity(localIntent);
    }
}

