package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.user.RemoveAdActivity;

final class z implements View.OnClickListener {
    private /* synthetic */ o a;

    z(o o2) {
        this.a = o2;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(o.a(this.a), RemoveAdActivity.class);
        o.a(this.a).startActivity(intent);
    }
}
