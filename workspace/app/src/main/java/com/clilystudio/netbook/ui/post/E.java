package com.clilystudio.netbook.ui.post;

import android.app.Dialog;
import android.view.View;

final class E implements View.OnClickListener {
    private /* synthetic */ Dialog a;
    private /* synthetic */ String b;
    private /* synthetic */ AddReviewContentActivity c;

    E(AddReviewContentActivity addReviewContentActivity, Dialog dialog, String string) {
        this.c = addReviewContentActivity;
        this.a = dialog;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        String string = AddReviewContentActivity.c(this.c).getText().toString().trim();
        String string2 = AddReviewContentActivity.d(this.c).getText().toString().trim();
        F f = new F(this.c, this.c, 2131034430);
        String[] arrstring = new String[]{this.b, AddReviewContentActivity.e(this.c), string, string2, String.valueOf(AddReviewContentActivity.f(this.c))};
        f.b(arrstring);
    }
}
