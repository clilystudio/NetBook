package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ao
        implements View.OnClickListener {
    ao(PostHeader paramPostHeader) {
    }

    public final void onClick(View paramView) {
        Context localContext = this.a.getContext();
        if ((localContext instanceof AbsPostActivity)) {
            AbsPostActivity localAbsPostActivity = (AbsPostActivity) localContext;
            new cb(localAbsPostActivity, new ap(this, localAbsPostActivity)).a().show();
        }
    }
}

