package com.clilystudio.app.netbook.ui.post;

import android.app.Dialog;
import android.view.View;

final class E
        implements View.OnClickListener {
    E(AddReviewContentActivity paramAddReviewContentActivity, Dialog paramDialog, String paramString) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        String str1 = AddReviewContentActivity.c(this.c).getText().toString().trim();
        String str2 = AddReviewContentActivity.d(this.c).getText().toString().trim();
        F localF = new F(this.c, this.c, 2131034430);
        String[] arrayOfString = new String[5];
        arrayOfString[0] = this.b;
        arrayOfString[1] = AddReviewContentActivity.e(this.c);
        arrayOfString[2] = str1;
        arrayOfString[3] = str2;
        arrayOfString[4] = String.valueOf(AddReviewContentActivity.f(this.c));
        localF.b(arrayOfString);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.E
 * JD-Core Version:    0.6.2
 */