package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity$Source;

import java.io.Serializable;

final class y
        implements View.OnClickListener {
    private /* synthetic */ o a;

    y(o o2) {
        this.a = o2;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = AuthLoginActivity.a(o.a(this.a));
        intent.putExtra("KEY_SOURCE", (Serializable) ((Object) AuthLoginActivity$Source.HOME));
        o.a(this.a).startActivity(intent);
    }
}
