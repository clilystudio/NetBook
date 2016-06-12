package com.clilystudio.netbook.util;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class v implements View$OnClickListener {

    private DialogUtil$GenderIntroDialog a;

    v(DialogUtil$GenderIntroDialog GenderIntroDialog1) {
        a = GenderIntroDialog1;
    }

    public final void onClick(View View1) {
        a.dismiss();
        i.a().c(new r(0));
        com.umeng.a.b.a(View1.getContext(), "book_recommend_gender_click", "cancel");
    }
}
