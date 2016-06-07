package com.ximalaya.ting.android.opensdk.util;

import android.content.ContentValues;

class XiMaDataSupport$2 extends MyAsyncTask<Void, Void, Integer>
{
  protected Integer doInBackground(Void[] paramArrayOfVoid)
  {
    return Integer.valueOf(XiMaDataSupport.updateAll(this.val$modelClass, this.val$values, this.val$conditions));
  }

  protected void onPostExecute(Integer paramInteger)
  {
    if (this.val$callback == null)
      return;
    this.val$callback.onResult(paramInteger);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.XiMaDataSupport.2
 * JD-Core Version:    0.6.0
 */