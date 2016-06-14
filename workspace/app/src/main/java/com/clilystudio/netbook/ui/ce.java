package com.clilystudio.netbook.ui;

import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class ce implements View.OnClickListener {
    private /* synthetic */ ShareRemoveAdActivity a;

    ce(ShareRemoveAdActivity shareRemoveAdActivity) {
        this.a = shareRemoveAdActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        if (am.e() == null) {
            this.a.startActivity(AuthLoginActivity.a(this.a));
        } else {
            ShareRemoveAdActivity.a(this.a);
        }
        String string = this.a.getIntent().getStringExtra("entrance_type");
        b.a(this.a, "share_remove_btn_click", string);
    }
}
