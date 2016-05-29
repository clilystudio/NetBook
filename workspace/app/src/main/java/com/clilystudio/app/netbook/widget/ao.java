package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.view.View;

import com.clilystudio.app.netbook.ui.cb;
import com.clilystudio.app.netbook.ui.post.AbsPostActivity;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.ao
 * JD-Core Version:    0.6.2
 */