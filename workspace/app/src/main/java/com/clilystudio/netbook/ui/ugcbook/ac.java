package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.Intent;
import com.clilystudio.netbook.am;
import android.view.View;

final class ac implements View.OnClickListener {
    private /* synthetic */ UGCMainActivity a;

    ac(UGCMainActivity uGCMainActivity) {
        this.a = uGCMainActivity;
    }

    @Override
    public final void onClick(View view) {
        if (am.a((Activity) this.a) != null) {
            b.a(this.a, "ugc_create");
            Intent intent = new Intent(this.a, UGCGuideAddCollectionActivity.class);
            this.a.startActivity(intent);
            UGCMainActivity.h(this.a);
        }
    }
}
