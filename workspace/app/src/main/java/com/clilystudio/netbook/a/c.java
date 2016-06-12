package com.clilystudio.netbook.a;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.widget.Toast;

public abstract class c extends e {

    private ProgressDialog a;
    private Activity b;
    private String c;
    private boolean d;
    private boolean e;
    public c(Activity Activity1, String String2) {
        d = true;
        e = true;
        b = Activity1;
        c = String2;
    }

    public c(Activity Activity1) {
        d = true;
        e = true;
        b = Activity1;
        c = Activity1.getString(2131034218);
    }

    public c(Activity Activity1, int int2) {
        d = true;
        e = true;
        b = Activity1;
        c = Activity1.getString(int2);
    }

    public c(Activity Activity1, int int2, boolean boolean3) {
        this(Activity1, int2);
        e = boolean3;
    }

    public transient abstract Object a(Object[] Object_1darray1);

    public abstract void a(Object Object1);

    public final Activity b() {
        return b;
    }

    public transient Object doInBackground(Object[] Object_1darray1) {
        Object Object3;

        try {
            Object3 = a(Object_1darray1);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return Object3;
    }

    public void onCancelled() {
        super.onCancelled();
        Toast.makeText((Context) b, (CharSequence) "\u5DF2\u53D6\u6D88", 0).show();
    }

    public void onPostExecute(Object Object1) {
        super.onPostExecute(Object1);
        try {
            if (a != null)
                a.dismiss();
        } catch (Exception Exception3) {
            a = null;
        } finally {
            a = null;
            throw Object2;
        }
        a(Object1);
    }

    public void onPreExecute() {
        Object Object1 = c;
        Object Object2 = new d(this);

        if (!b.isFinishing() && e) {
            a = ProgressDialog.show((Context) b, null, (CharSequence) Object1, true, d, (DialogInterface$OnCancelListener) Object2);
            a.setCanceledOnTouchOutside(false);
        }
        super.onPreExecute();
    }
}
