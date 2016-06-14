package com.clilystudio.netbook.a_pack;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.widget.Toast;

public abstract class c<Input, E>
        extends e<Input, Void, E> {
    private ProgressDialog a;
    private Activity b;
    private String c;
    private boolean d = true;
    private boolean e = true;

    public c(Activity activity) {
        this.b = activity;
        this.c = activity.getString(2131034218);
    }

    public c(Activity activity, int n) {
        this.b = activity;
        this.c = activity.getString(n);
    }

    public c(Activity activity, int n, boolean bl) {
        this(activity, n);
        this.e = bl;
    }

    public c(Activity activity, String string) {
        this.b = activity;
        this.c = string;
    }

    public /* varargs */ abstract E a(Input... var1);

    public abstract void a(E var1);

    public final Activity b() {
        return this.b;
    }

    @Override
    public /* varargs */ E doInBackground(Input... arrInput) {
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
        Toast.makeText((Context) this.b, "\u5df2\u53d6\u6d88", 0).show();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public void onPostExecute(E var1_1) {
        block5:
        {
            super.onPostExecute(var1_1);
            try {
                if (this.a != null) {
                    this.a.dismiss();
                }
                break block5;
            } catch (Exception var3_2) {
            }
            **GOTO lbl10
            finally{
            this.a = null;
        }
        }
        this.a(var1_1);
    }

    @Override
    public void onPreExecute() {
        String string = this.c;
        d d2 = new d(this);
        if (!this.b.isFinishing() && this.e) {
            this.a = ProgressDialog.show(this.b, null, string, true, this.d, d2);
            this.a.setCanceledOnTouchOutside(false);
        }
        super.onPreExecute();
    }
}
