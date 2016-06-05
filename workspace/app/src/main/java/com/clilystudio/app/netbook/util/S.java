package com.clilystudio.app.netbook.util;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Root;

public abstract class S<T extends Root> extends e<String, Void, T> {
    private T a(String[] paramArrayOfString) {
        try {
            b.a();
            Root localRoot = a(b.b(), paramArrayOfString);
            return localRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    protected abstract T a(ApiService paramApiService, String[] paramArrayOfString);

    protected void a(T paramT) {
    }

    protected abstract void b(T paramT);
}
