package com.clilystudio.netbook.adapter;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;

final class S extends e<String, Void, PostPublish> {
    private /* synthetic */ G a;

    S(G g) {
        this.a = g;
    }

    private static /* varargs */ PostPublish a(String... arrstring) {
        try {
            b.a();
            PostPublish postPublish = b.b().k(arrstring[0], arrstring[1]);
            return postPublish;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ PostPublish doInBackground(String[] arrobject) {
        return S.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(PostPublish object) {
        PostPublish postPublish = (PostPublish) object;
        if (postPublish != null && postPublish.isOk() && G.b(this.a) != null) {
            this.a.f().remove(G.c(this.a));
            this.a.notifyDataSetChanged();
            G.a(this.a, null);
            G.d(this.a, null);
        }
    }
}
