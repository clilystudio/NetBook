package com.clilystudio.app.netbook.util;

import android.view.View;

import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.event.r;

final class w
        implements View.OnClickListener {
    w(DialogUtil.GenderIntroDialog paramGenderIntroDialog) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        i_OttoBus.a().c(new r(1));
        com.umeng.a.b.a(paramView.getContext(), "book_recommend_gender_click", "male");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.w
 * JD-Core Version:    0.6.2
 */