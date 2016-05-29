package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.Intent;
import android.view.View;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class ac
        implements View.OnClickListener {
    ac(UGCMainActivity paramUGCMainActivity) {
    }

    public final void onClick(View paramView) {
        if (am_CommonUtils.a_isTaskStoped(this.a) != null) {
            b.a(this.a, "ugc_create");
            Intent localIntent = new Intent(this.a, UGCGuideAddCollectionActivity.class);
            this.a.startActivity(localIntent);
            UGCMainActivity.h(this.a);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.ac
 * JD-Core Version:    0.6.2
 */