package com.clilystudio.app.netbook.ui.post;

import android.app.Dialog;
import android.view.View;

final class q
        implements View.OnClickListener {
    q(AddGamePostActivity paramAddGamePostActivity, Dialog paramDialog, String paramString) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        String str1 = this.c.getIntent().getStringExtra("post_game_id");
        String str2 = AddGamePostActivity.c(this.c).getText().toString().trim();
        t localt = new t(this.c, this.c, 2131034430);
        String[] arrayOfString = new String[3];
        arrayOfString[0] = this.b;
        arrayOfString[1] = str1;
        arrayOfString[2] = str2;
        localt.b(arrayOfString);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.q
 * JD-Core Version:    0.6.2
 */