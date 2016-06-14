package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import com.clilystudio.netbook.am;

final class by implements j {
    private /* synthetic */ GirlTopicListActivity a;

    by(GirlTopicListActivity girlTopicListActivity) {
        this.a = girlTopicListActivity;
    }

    @Override
    public final void a() {
        if (GirlTopicListActivity.e(this.a) == null || GirlTopicListActivity.e(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            GirlTopicListActivity.p(this.a).setVisibility(View.VISIBLE);
            if (!am.a(GirlTopicListActivity.h(this.a))) {
                GirlTopicListActivity.h(this.a).cancel(true);
            }
            GirlTopicListActivity.a(this.a, new bI(this.a, 0));
            bI bI2 = GirlTopicListActivity.e(this.a);
            String[] arrstring = new String[]{GirlTopicListActivity.f(this.a), GirlTopicListActivity.g(this.a)};
            bI2.b(arrstring);
        }
    }
}
