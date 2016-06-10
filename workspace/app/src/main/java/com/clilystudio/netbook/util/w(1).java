package com.clilystudio.netbook.util;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class w
        implements View.OnClickListener {
    w(DialogUtil.GenderIntroDialog paramGenderIntroDialog) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        i.a().c(new r(1));
        com.clilystudio.netbook.umeng.a_Pack.b.a(paramView.getContext(), "book_recommend_gender_click", "male");
    }
}

