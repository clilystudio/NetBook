package com.clilystudio.netbook.a_pack;

import android.os.AsyncTask;
import android.os.Build;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;

public abstract class BaseAsyncTask<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {
    private final ApiService a;

    public BaseAsyncTask() {
        b.a();
        this.a = b.b();
    }

    public final AsyncTask<Params, Progress, Result> b(Params... arrParams) {
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                return this.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, arrParams);
            }
            return this.execute(arrParams);
        } catch (Exception var2_3) {
            return null;
        }
    }

    public final ApiService c() {
        return this.a;
    }
}
