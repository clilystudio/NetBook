package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.User;

final class dw implements View$OnClickListener {

    private User a;
    private TweetDetailActivity b;
    dw(TweetDetailActivity TweetDetailActivity1, User User2) {
        b = TweetDetailActivity1;
        a = User2;
    }

    public final void onClick(View View1) {
        Intent Intent2 = OtherUserActivity.a((Context) b);

        Intent2.putExtra("USER_ID", a.getId());
        Intent2.putExtra("USER_NAME", a.getNickname());
        b.startActivity(Intent2);
    }
}
