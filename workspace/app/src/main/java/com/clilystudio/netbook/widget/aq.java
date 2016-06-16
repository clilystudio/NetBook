package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.ui.post.AbsPostActivity;
import com.koushikdutta.async.http.a;

final class aq implements View.OnClickListener {
    private /* synthetic */ PostHeader a;

    aq(PostHeader postHeader) {
        this.a = postHeader;
    }

    @Override
    public final void onClick(View view) {
        Context context = this.a.getContext();
        if (context instanceof AbsPostActivity) {
            AbsPostActivity absPostActivity = (AbsPostActivity) context;
            a a2 = new a(absPostActivity, view);
            a2.b().inflate(R.menu.game_post_menu, a2.a());
            a2.a(new ar(this, absPostActivity));
            a2.c();
        }
    }
}
