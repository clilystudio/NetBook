package com.clilystudio.netbook.util;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class v
        implements View.OnClickListener {
    v(DialogUtil.GenderIntroDialog paramGenderIntroDialog) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        i.a().c(new r(0));
        com.umeng.a.b.a(paramView.getContext(), "book_recommend_gender_click", "cancel");
    }
}

