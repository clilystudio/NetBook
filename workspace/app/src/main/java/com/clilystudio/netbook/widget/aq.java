package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.ui.post.AbsPostActivity;
import com.koushikdutta.async.http.a;

final class aq
        implements View.OnClickListener {
    aq(PostHeader paramPostHeader) {
    }

    public final void onClick(View paramView) {
        Context localContext = this.a.getContext();
        if ((localContext instanceof AbsPostActivity)) {
            AbsPostActivity localAbsPostActivity = (AbsPostActivity) localContext;
            a locala = new a(localAbsPostActivity, paramView);
            locala.b().inflate(2131558403, locala.a());
            locala.a(new ar(this, localAbsPostActivity));
            locala.c();
        }
    }
}
