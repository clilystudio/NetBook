package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.ui.cd;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ao implements View$OnClickListener {

    private PostHeader a;

    ao(PostHeader PostHeader1) {
        a = PostHeader1;
    }

    public final void onClick(View View1) {
        Context Context2 = a.getContext();

        if (Context2 instanceof AbsPostActivity) {
            Object Object3 = (AbsPostActivity) Context2;

            new cb((Activity) Object3, (cd) new ap(this, (AbsPostActivity) Object3)).a().show();
        }
    }
}
