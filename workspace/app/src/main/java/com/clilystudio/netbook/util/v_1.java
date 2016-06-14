package com.clilystudio.netbook.util;

import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class v implements View.OnClickListener {
    private /* synthetic */ DialogUtil$GenderIntroDialog a;

    v(DialogUtil$GenderIntroDialog genderIntroDialog) {
        this.a = genderIntroDialog;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        i.a().c(new r(0));
        b.a(view.getContext(), "book_recommend_gender_click", "cancel");
    }
}
