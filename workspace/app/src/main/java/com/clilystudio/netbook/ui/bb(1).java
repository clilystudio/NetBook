package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

final class bb
        implements View.OnClickListener {
    bb(ImportantNotificationFragment paramImportantNotificationFragment) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a.getActivity(), UnimportantNotificationActivity.class);
        this.a.startActivity(localIntent);
    }
}

