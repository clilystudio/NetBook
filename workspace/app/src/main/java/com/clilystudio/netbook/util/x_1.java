package com.clilystudio.netbook.util;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class x implements View.OnClickListener {
    private /* synthetic */ DialogUtil$GenderIntroDialog a;

    x(DialogUtil$GenderIntroDialog genderIntroDialog) {
        this.a = genderIntroDialog;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        i.a().c(new r(2));
        b.a(view.getContext(), "book_recommend_gender_click", "female");
    }
}
