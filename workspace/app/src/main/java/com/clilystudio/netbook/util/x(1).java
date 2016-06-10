package com.clilystudio.netbook.util;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class x
        implements View.OnClickListener {
    x(DialogUtil.GenderIntroDialog paramGenderIntroDialog) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        i.a().c(new r(2));
        com.clilystudio.netbook.umeng.a_Pack.b.a(paramView.getContext(), "book_recommend_gender_click", "female");
    }
}

