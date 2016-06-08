package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.widget.av;

final class bo
        implements av {
    bo(GirlTopicActivity paramGirlTopicActivity) {
    }

    public final void a() {
        if ((GirlTopicActivity.k(this.a) == null) || (GirlTopicActivity.k(this.a).getStatus() == AsyncTask.Status.FINISHED))
            GirlTopicActivity.b(this.a);
    }
}

