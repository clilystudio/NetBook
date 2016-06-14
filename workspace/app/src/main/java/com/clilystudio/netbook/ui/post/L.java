package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class L implements DialogInterface.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ AddVoteActivity b;

    L(AddVoteActivity addVoteActivity, String string) {
        this.b = addVoteActivity;
        this.a = string;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        String string = AddVoteActivity.a(this.b).getText().toString().trim();
        String string2 = AddVoteActivity.b(this.b).getText().toString().trim();
        P p = new P(this.b, this.b, 2131034430);
        String[] arrstring = new String[]{this.a, AddVoteActivity.c(this.b), string, string2};
        p.b(arrstring);
    }
}
