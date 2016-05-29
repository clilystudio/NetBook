package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.app.netbook.ui.ShareRemoveAdActivity;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ai
 * JD-Core Version:    0.6.2
 */