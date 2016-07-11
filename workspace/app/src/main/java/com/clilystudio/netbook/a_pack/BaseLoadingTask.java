package com.clilystudio.netbook.a_pack;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.widget.Toast;

import com.clilystudio.netbook.R;

public abstract class BaseLoadingTask<Input, E> extends BaseAsyncTask<Input, Void, E> {
    private ProgressDialog a;
    private Activity b;
    private String c;
    private boolean d = true;
    private boolean e = true;

    public BaseLoadingTask(Activity activity) {
        this.b = activity;
        this.c = activity.getString(R.string.loading);
    }

    public BaseLoadingTask(Activity activity, int resId) {
        this.b = activity;
        this.c = activity.getString(resId);
    }

    public BaseLoadingTask(Activity activity, int resId, boolean bl) {
        this(activity, resId);
        this.e = bl;
    }

    public BaseLoadingTask(Activity activity, String string) {
        this.b = activity;
        this.c = string;
    }

    public abstract E a(Input... var1);

    public abstract void a(E var1);

    public final Activity b() {
        return this.b;
    }

    @Override
    public E doInBackground(Input... arrInput) {
        E e2;
        try {
            e2 = this.a(arrInput);
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
        return e2;
    }

    @Override
    public void onCancelled() {
        super.onCancelled();
        Toast.makeText(this.b, "已取消", Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onPostExecute(E var1_1) {
        super.onPostExecute(var1_1);
        if (this.a != null) {
            this.a.dismiss();
        }
        this.a(var1_1);
        this.a = null;
    }

    @Override
    public void onPreExecute() {
        String string = this.c;
        if (!this.b.isFinishing() && this.e) {
            this.a = ProgressDialog.show(this.b, null, string, true, this.d, new DialogInterface.OnCancelListener() {
                @Override
                public void onCancel(DialogInterface dialog) {
                    BaseLoadingTask.this.cancel(true);
                }
            });
            this.a.setCanceledOnTouchOutside(false);
        }
        super.onPreExecute();
    }
}
