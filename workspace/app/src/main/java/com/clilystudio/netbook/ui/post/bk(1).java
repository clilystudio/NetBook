package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.Follower;

final class bk
        implements View.OnClickListener {
    bk(bj parambj, int paramInt) {
    }

    public final void onClick(View paramView) {
        Follower localFollower = (Follower) this.b.getItem(this.a);
        Intent localIntent = OtherUserActivity.a(this.b.a);
        localIntent.putExtra("USER_ID", localFollower.get_id());
        localIntent.putExtra("USER_NAME", localFollower.getNickname());
        this.b.a.startActivity(localIntent);
    }
}
