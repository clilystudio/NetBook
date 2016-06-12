package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity$Source;

import java.io.Serializable;

final class y implements View$OnClickListener {

    private o a;

    y(o o1) {
        a = o1;
    }

    public final void onClick(View View1) {
        Intent Intent2 = AuthLoginActivity.a((Context) o.a(a));

        Intent2.putExtra("KEY_SOURCE", (Serializable) AuthLoginActivity$Source.HOME);
        o.a(a).startActivity(Intent2);
    }
}
