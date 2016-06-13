package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

import com.clilystudio.netbook.widget.av;

final class bo
        implements av {
    private /* synthetic */ GirlTopicActivity a;

    bo(GirlTopicActivity girlTopicActivity) {
        this.a = girlTopicActivity;
    }

    @Override
    public final void a() {
        if (GirlTopicActivity.k(this.a) == null || GirlTopicActivity.k(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            GirlTopicActivity.b(this.a);
        }
    }
}
