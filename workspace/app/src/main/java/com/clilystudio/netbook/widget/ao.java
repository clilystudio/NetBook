package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ao implements View.OnClickListener {
    private /* synthetic */ PostHeader a;

    ao(PostHeader postHeader) {
        this.a = postHeader;
    }

    @Override
    public final void onClick(View view) {
        Context context = this.a.getContext();
        if (context instanceof AbsPostActivity) {
            AbsPostActivity absPostActivity = (AbsPostActivity) context;
            new cb(absPostActivity, new ap(this, absPostActivity)).a().show();
        }
    }
}
