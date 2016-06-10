package com.clilystudio.netbook.a_pack;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.widget.Toast;

import com.clilystudio.netbook.R;

public abstract class c<Input, E> extends e<Input, Void, E> {
    private ProgressDialog a;
    private Activity b;
    private String c;
    private boolean d = true;
    private boolean e = true;

    public c(Activity paramActivity) {
        this.b = paramActivity;
        this.c = paramActivity.getString(R.string.loading);
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
            return (E)localObject;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    public void onCancelled() {
        super.onCancelled();
        Toast.makeText(this.b, "已取消", Toast.LENGTH_SHORT).show();
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
        if ((!this.b.isFinishing()) && (this.e)) {
            this.a = ProgressDialog.show(this.b, null, str, true, true, new DialogInterface.OnCancelListener() {
                @Override
                public void onCancel(DialogInterface dialog) {
                    cancel(true);
                }
            });
            this.a.setCanceledOnTouchOutside(false);
        }
        super.onPreExecute();
    }
}

