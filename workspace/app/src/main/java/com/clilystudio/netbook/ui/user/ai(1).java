package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.ShareRemoveAdActivity;

final class ai
        implements View.OnClickListener {
    ai(RemoveAdActivity paramRemoveAdActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = ShareRemoveAdActivity.a(this.a, "removeAd");
        this.a.startActivity(localIntent);
        b.a(this.a, "share_remove_entrance_click", "removeAd");
    }
}

