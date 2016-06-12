package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask$Status;

import com.clilystudio.netbook.widget.av;

final class bo implements av {

    private GirlTopicActivity a;

    bo(GirlTopicActivity GirlTopicActivity1) {
        a = GirlTopicActivity1;
    }

    public final void a() {
        if (GirlTopicActivity.k(a) == null || GirlTopicActivity.k(a).getStatus() == AsyncTask$Status.FINISHED)
            GirlTopicActivity.b(a);
    }
}
