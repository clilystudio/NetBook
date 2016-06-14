package com.clilystudio.netbook.adapter;

import android.support.design.widget.am;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.model.Tweet;

final class U extends e<String, Void, PostPublish> {
    public U(G g, Tweet tweet, R r) {
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        String[] arrstring = (String[]) arrobject;
        return this.c().m(arrstring[0], arrstring[1]);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        PostPublish postPublish = (PostPublish) object;
        super.onPostExecute(postPublish);
        am.e();
        if (postPublish != null) {
            postPublish.isOk();
        }
    }
}
