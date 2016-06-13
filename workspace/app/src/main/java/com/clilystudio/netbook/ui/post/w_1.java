package com.clilystudio.netbook.ui.post;

import android.app.Dialog;
import android.view.View;

final class w
        implements View.OnClickListener {
    private /* synthetic */ Dialog a;
    private /* synthetic */ String b;
    private /* synthetic */ AddGirlTopicActivity c;

    w(AddGirlTopicActivity addGirlTopicActivity, Dialog dialog, String string) {
        this.c = addGirlTopicActivity;
        this.a = dialog;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        String string = AddGirlTopicActivity.c(this.c).getText().toString().trim();
        String string2 = AddGirlTopicActivity.d(this.c).getText().toString().trim();
        z z2 = new z(this.c, this.c, 2131034430);
        String[] arrstring = new String[]{this.b, string, string2};
        z2.b(arrstring);
    }
}
