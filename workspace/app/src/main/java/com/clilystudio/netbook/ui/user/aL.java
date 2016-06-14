package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aL implements View.OnClickListener {
    private /* synthetic */ UserLevelActivity a;

    aL(UserLevelActivity userLevelActivity) {
        this.a = userLevelActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, UserTaskActivity.class);
        this.a.startActivity(intent);
        this.a.finish();
    }
}
