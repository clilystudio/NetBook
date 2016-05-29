package com.clilystudio.app.netbook.util;

import android.view.View;

import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.r;

final class x
        implements View.OnClickListener {
    x(DialogUtil.GenderIntroDialog paramGenderIntroDialog) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        i.a().c(new r(2));
        com.umeng.a.b.a(paramView.getContext(), "book_recommend_gender_click", "female");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.x
 * JD-Core Version:    0.6.2
 */