package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.ShareRemoveAdActivity;

final class ai
        implements View.OnClickListener {
    private /* synthetic */ RemoveAdActivity a;

    ai(RemoveAdActivity removeAdActivity) {
        this.a = removeAdActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = ShareRemoveAdActivity.a(this.a, "removeAd");
        this.a.startActivity(intent);
        b.a(this.a, "share_remove_entrance_click", "removeAd");
    }
}
