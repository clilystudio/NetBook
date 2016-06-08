package com.clilystudio.netbook.a_pack;

import android.app.Activity;
import android.app.ProgressDialog;
import android.widget.Toast;

public abstract class c<Input, E> extends e<Input, Void, E> {
    private ProgressDialog a;
    private Activity b;
    private String c;
    private boolean d = true;
    private boolean e = true;

    public c(Activity paramActivity) {
        this.b = paramActivity;
        this.c = paramActivity.getString(2131034218);
    }

    public c(Activity paramActivity, int paramInt) {
        this.b = paramActivity;
        this.c = paramActivity.getString(paramInt);
    }

    public c(Activity paramActivity, int paramInt, boolean paramBoolean) {
        this(paramActivity, paramInt);
        this.e = paramBoolean;
    }

    public c(Activity paramActivity, String paramString) {
        this.b = paramActivity;
        this.c = paramString;
    }

    public abstract E a(Input[] paramArrayOfInput);

    public abstract void a(E paramE);

    public final Activity b() {
        return this.b;
    }

    public E doInBackground(Input[] paramArrayOfInput) {
        try {
            Object localObject = a(paramArrayOfInput);
            return localObject;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    public void onCancelled() {
        super.onCancelled();
        Toast.makeText(this.b, "已取消", 0).show();
    }

     public void onPostExecute(E paramE) {
        super.onPostExecute(paramE);
        if (this.a != null) {
            this.a.dismiss();
        }
        this.a = null;
        this.a(paramE);
    }

    public void onPreExecute() {
        String str = this.c;
        d locald = new d(this);
        if ((!this.b.isFinishing()) && (this.e)) {
            this.a = ProgressDialog.show(this.b, null, str, true, this.d, locald);
            this.a.setCanceledOnTouchOutside(false);
        }
        super.onPreExecute();
    }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.a.c
 * JD-Core Version:    0.6.0
 */