package com.clilystudio.app.netbook.a_packA;

import android.os.AsyncTask;
import android.os.Build;

import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;

public abstract class e_BaseAsyncTask<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {
    private final ApiService a;

    public e_BaseAsyncTask() {
        b.a();
        this.a = b.b();
    }

    public final AsyncTask<Params, Progress, Result> b(Params[] params) {
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                return executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, params);
            } else {
                return execute(params);
            }
        } catch (Exception localException) {
        }
        return null;
    }

    public final ApiService c() {
        return this.a;
    }
}
