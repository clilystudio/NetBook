package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.user.RemoveAdActivity;

final class z
        implements View.OnClickListener {
    z(o paramo) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(o.a(this.a), RemoveAdActivity.class);
        o.a(this.a).startActivity(localIntent);
    }
}

