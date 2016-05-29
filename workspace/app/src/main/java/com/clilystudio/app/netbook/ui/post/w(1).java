package com.clilystudio.app.netbook.ui.post;

import android.app.Dialog;
import android.view.View;

final class w
        implements View.OnClickListener {
    w(AddGirlTopicActivity paramAddGirlTopicActivity, Dialog paramDialog, String paramString) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        String str1 = AddGirlTopicActivity.c(this.c).getText().toString().trim();
        String str2 = AddGirlTopicActivity.d(this.c).getText().toString().trim();
        z localz = new z(this.c, this.c, 2131034430);
        String[] arrayOfString = new String[3];
        arrayOfString[0] = this.b;
        arrayOfString[1] = str1;
        arrayOfString[2] = str2;
        localz.b(arrayOfString);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.w
 * JD-Core Version:    0.6.2
 */