package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class L implements DialogInterface$OnClickListener {

    private String a;
    private AddVoteActivity b;
    L(AddVoteActivity AddVoteActivity1, String String2) {
        b = AddVoteActivity1;
        a = String2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        String String3;
        String String4;
        P P5;
        String[] String_1darray6;

        DialogInterface1.dismiss();
        String3 = AddVoteActivity.a(b).getText().toString().trim();
        String4 = AddVoteActivity.b(b).getText().toString().trim();
        P5 = new P(b, (Activity) b, 2131034430);
        String_1darray6 = new String[4];
        String_1darray6[0] = a;
        String_1darray6[1] = AddVoteActivity.c(b);
        String_1darray6[2] = String3;
        String_1darray6[3] = String4;
        P5.b(String_1darray6);
    }
}
