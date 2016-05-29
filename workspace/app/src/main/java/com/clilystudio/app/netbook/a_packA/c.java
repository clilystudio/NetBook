package com.clilystudio.app.netbook.a_packA;

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

    // ERROR //
    public void onPostExecute(E paramE) {
        // Byte code:
        //   0: aload_0
        //   1: aload_1
        //   2: invokespecial 67	com/ushaqi/zhuishushenqi/a/e:onPostExecute	(Ljava/lang/Object;)V
        //   5: aload_0
        //   6: getfield 69	com/ushaqi/zhuishushenqi/a/c:a	Landroid/app/ProgressDialog;
        //   9: ifnull +10 -> 19
        //   12: aload_0
        //   13: getfield 69	com/ushaqi/zhuishushenqi/a/c:a	Landroid/app/ProgressDialog;
        //   16: invokevirtual 74	android/app/ProgressDialog:dismiss	()V
        //   19: aload_0
        //   20: aconst_null
        //   21: putfield 69	com/ushaqi/zhuishushenqi/a/c:a	Landroid/app/ProgressDialog;
        //   24: aload_0
        //   25: aload_1
        //   26: invokevirtual 76	com/ushaqi/zhuishushenqi/a/c:a	(Ljava/lang/Object;)V
        //   29: return
        //   30: astore_3
        //   31: aload_0
        //   32: aconst_null
        //   33: putfield 69	com/ushaqi/zhuishushenqi/a/c:a	Landroid/app/ProgressDialog;
        //   36: goto -12 -> 24
        //   39: astore_2
        //   40: aload_0
        //   41: aconst_null
        //   42: putfield 69	com/ushaqi/zhuishushenqi/a/c:a	Landroid/app/ProgressDialog;
        //   45: aload_2
        //   46: athrow
        //
        // Exception table:
        //   from	to	target	type
        //   5	19	30	java/lang/Exception
        //   5	19	39	finally
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.a.c
 * JD-Core Version:    0.6.2
 */