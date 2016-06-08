package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aL
        implements View.OnClickListener {
    aL(UserLevelActivity paramUserLevelActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, UserTaskActivity.class);
        this.a.startActivity(localIntent);
        this.a.finish();
    }
}

