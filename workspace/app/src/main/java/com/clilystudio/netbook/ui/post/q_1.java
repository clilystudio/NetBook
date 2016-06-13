package com.clilystudio.netbook.ui.post;

import android.app.Dialog;
import android.view.View;

final class q
        implements View.OnClickListener {
    private /* synthetic */ Dialog a;
    private /* synthetic */ String b;
    private /* synthetic */ AddGamePostActivity c;

    q(AddGamePostActivity addGamePostActivity, Dialog dialog, String string) {
        this.c = addGamePostActivity;
        this.a = dialog;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        String string = this.c.getIntent().getStringExtra("post_game_id");
        String string2 = AddGamePostActivity.c(this.c).getText().toString().trim();
        t t2 = new t(this.c, this.c, 2131034430);
        String[] arrstring = new String[]{this.b, string, string2};
        t2.b(arrstring);
    }
}
