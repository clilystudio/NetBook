package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GirlTopicResult;

final class br extends e<String, Void, GirlTopicResult> {
    private /* synthetic */ GirlTopicActivity a;

    private br(GirlTopicActivity girlTopicActivity) {
        this.a = girlTopicActivity;
    }

    /* synthetic */ br(GirlTopicActivity girlTopicActivity, byte by) {
        this(girlTopicActivity);
    }

    private /* varargs */ GirlTopicResult a(String... arrstring) {
        try {
            GirlTopicResult girlTopicResult = b.b().F(arrstring[0]);
            return girlTopicResult;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        GirlTopicResult girlTopicResult = (GirlTopicResult) object;
        super.onPostExecute(girlTopicResult);
        if (girlTopicResult != null && girlTopicResult.getPost() != null) {
            this.a.f();
            GirlTopicActivity.a(this.a, girlTopicResult.getPost());
            GirlTopicActivity.b(this.a, GirlTopicActivity.a(this.a));
            GirlTopicActivity.a(this.a, GirlTopicActivity.a(this.a).getVotes());
            if (GirlTopicActivity.a(this.a).getCommentCount() >= 0) {
                GirlTopicActivity.b(this.a);
            }
            return;
        }
        this.a.h();
    }
}
