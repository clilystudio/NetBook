package com.clilystudio.app.netbook.reader;

import android.content.Intent;
import android.view.View;

import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity.Source;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.y
 * JD-Core Version:    0.6.2
 */