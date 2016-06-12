package com.clilystudio.netbook.a;

import android.os.AsyncTask;
import android.os.Build$VERSION;

import com.clilystudio.netbook.api.ApiService;

public abstract class e extends AsyncTask {

    private ApiService a;     // final access specifier removed

    public e() {
        com.clilystudio.netbook.api.b.a();
        a = com.clilystudio.netbook.api.b.b();
    }

    public final transient AsyncTask b(Object[] Object_1darray1) {
        AsyncTask AsyncTask3;

        try {
            if (Build$VERSION.SDK_INT >= 11)
                return executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Object_1darray1);
            else
                AsyncTask3 = execute(Object_1darray1);
        } catch (Exception Exception2) {
            return null;
        }
        return AsyncTask3;
    }

    public final ApiService c() {
        return a;
    }
}
