package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import com.clilystudio.netbook.am;

final class aX implements j {
    private /* synthetic */ CommonPostListActivity a;

    aX(CommonPostListActivity commonPostListActivity) {
        this.a = commonPostListActivity;
    }

    @Override
    public final void a() {
        if (CommonPostListActivity.c(this.a) == null || CommonPostListActivity.c(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            CommonPostListActivity.q(this.a).setVisibility(View.VISIBLE);
            if (!am.a(CommonPostListActivity.f(this.a))) {
                CommonPostListActivity.f(this.a).cancel(true);
            }
            CommonPostListActivity.a(this.a, new bh(this.a, 0));
            bh bh2 = CommonPostListActivity.c(this.a);
            String[] arrstring = new String[]{CommonPostListActivity.d(this.a), CommonPostListActivity.e(this.a)};
            bh2.b(arrstring);
        }
    }
}
