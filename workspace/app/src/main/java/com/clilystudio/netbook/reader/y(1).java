package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity.Source;

final class y
        implements View.OnClickListener {
    y(o paramo) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = AuthLoginActivity.a(o.a(this.a));
        localIntent.putExtra("KEY_SOURCE", AuthLoginActivity.Source.HOME);
        o.a(this.a).startActivity(localIntent);
    }
}
