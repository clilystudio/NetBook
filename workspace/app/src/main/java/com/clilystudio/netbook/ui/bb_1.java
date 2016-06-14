package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

final class bb implements View.OnClickListener {
    private /* synthetic */ ImportantNotificationFragment a;

    bb(ImportantNotificationFragment importantNotificationFragment) {
        this.a = importantNotificationFragment;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a.getActivity(), UnimportantNotificationActivity.class);
        this.a.startActivity(intent);
    }
}
