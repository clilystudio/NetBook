package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.view.View;

final class ac
        implements View.OnClickListener {
    ac(UGCMainActivity paramUGCMainActivity) {
    }

    public final void onClick(View paramView) {
        if (am.a(this.a) != null) {
            b.a(this.a, "ugc_create");
            Intent localIntent = new Intent(this.a, UGCGuideAddCollectionActivity.class);
            this.a.startActivity(localIntent);
            UGCMainActivity.h(this.a);
        }
    }
}

