package com.clilystudio.netbook.ui.post;

final class by
        implements j {
    by(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    public final void a() {
        if ((GirlTopicListActivity.e(this.a) == null) || (GirlTopicListActivity.e(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            GirlTopicListActivity.p(this.a).setVisibility(0);
            if (!am.a(GirlTopicListActivity.h(this.a)))
                GirlTopicListActivity.h(this.a).cancel(true);
            GirlTopicListActivity.a(this.a, new bI(this.a, 0));
            bI localbI = GirlTopicListActivity.e(this.a);
            String[] arrayOfString = new String[2];
            arrayOfString[0] = GirlTopicListActivity.f(this.a);
            arrayOfString[1] = GirlTopicListActivity.g(this.a);
            localbI.b(arrayOfString);
        }
    }
}

