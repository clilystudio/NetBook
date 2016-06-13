package com.clilystudio.netbook.util;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class w
        implements View.OnClickListener {
    private /* synthetic */ DialogUtil$GenderIntroDialog a;

    w(DialogUtil$GenderIntroDialog genderIntroDialog) {
        this.a = genderIntroDialog;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        i.a().c(new r(1));
        b.a(view.getContext(), "book_recommend_gender_click", "male");
    }
}
