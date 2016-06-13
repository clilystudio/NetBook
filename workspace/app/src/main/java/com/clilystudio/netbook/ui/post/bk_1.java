package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.Follower;

final class bk
        implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ bj b;

    bk(bj bj2, int n) {
        this.b = bj2;
        this.a = n;
    }

    @Override
    public final void onClick(View view) {
        Follower follower = (Follower) this.b.getItem(this.a);
        Intent intent = OtherUserActivity.a(this.b.a);
        intent.putExtra("USER_ID", follower.get_id());
        intent.putExtra("USER_NAME", follower.getNickname());
        this.b.a.startActivity(intent);
    }
}
