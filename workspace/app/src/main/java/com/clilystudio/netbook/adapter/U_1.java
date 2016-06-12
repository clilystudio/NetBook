package com.clilystudio.netbook.adapter;

import android.support.design.widget.am;

import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.model.Tweet;

final class U extends com.clilystudio.netbook.a.e {

    public U(G G1, Tweet Tweet2, R R3) {
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        String[] String_1darray2 = (String[]) Object_1darray1;

        return c().m(String_1darray2[0], String_1darray2[1]);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (PostPublish) Object1;

        super.onPostExecute(Object2);
        am.e();
        if (Object2 != null)
            ((PostPublish) Object2).isOk();
    }
}
