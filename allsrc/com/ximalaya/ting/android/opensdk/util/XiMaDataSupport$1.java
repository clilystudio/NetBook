package com.ximalaya.ting.android.opensdk.util;

class XiMaDataSupport$1 extends MyAsyncTask<Void, Void, Boolean>
{
  protected Boolean doInBackground(Void[] paramArrayOfVoid)
  {
    return Boolean.valueOf(this.this$0.save());
  }

  protected void onPostExecute(Boolean paramBoolean)
  {
    if (this.val$callback == null)
      return;
    this.val$callback.onResult(paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.XiMaDataSupport.1
 * JD-Core Version:    0.6.0
 */