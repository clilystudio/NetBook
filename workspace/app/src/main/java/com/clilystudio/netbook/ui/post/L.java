package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class L
        implements DialogInterface.OnClickListener {
    L(AddVoteActivity paramAddVoteActivity, String paramString) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        String str1 = AddVoteActivity.a(this.b).getText().toString().trim();
        String str2 = AddVoteActivity.b(this.b).getText().toString().trim();
        P localP = new P(this.b, this.b, 2131034430);
        String[] arrayOfString = new String[4];
        arrayOfString[0] = this.a;
        arrayOfString[1] = AddVoteActivity.c(this.b);
        arrayOfString[2] = str1;
        arrayOfString[3] = str2;
        localP.b(arrayOfString);
    }
}

