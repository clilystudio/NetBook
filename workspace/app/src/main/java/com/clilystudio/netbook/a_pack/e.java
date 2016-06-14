package com.clilystudio.netbook.a_pack;

import android.os.AsyncTask;
import android.os.Build;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;

public abstract class e<Params, Progress, Result>
        extends AsyncTask<Params, Progress, Result> {
    private final ApiService a;

    public e() {
        b.a();
        this.a = b.b();
    }

    public final /* varargs */ AsyncTask<Params, Progress, Result> b(Params... arrParams) {
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                return this.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, arrParams);
            }
            AsyncTask asyncTask = this.execute(arrParams);
            return asyncTask;
        } catch (Exception var2_3) {
            return null;
        }
    }

    public final ApiService c() {
        return this.a;
    }
}
