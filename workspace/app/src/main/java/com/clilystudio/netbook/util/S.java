package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Root;

public abstract class S<T extends Root> extends e<String, Void, T> {
    private /* varargs */ T a(String... arrstring) {
        T t;
        try {
            b.a();
            t = this.a(b.b(), arrstring);
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
        return t;
    }

    protected abstract T a(ApiService var1, String[] var2);

    protected void a(T t) {
    }

    protected abstract void b(T var1);

    @Override
    protected /* synthetic */ T doInBackground(String[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected /* synthetic */ void onPostExecute(T root) {
        super.onPostExecute(root);
        if (root != null && root.isOk()) {
            this.b(root);
            return;
        }
        this.a(root);
    }
}
