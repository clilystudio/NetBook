package com.ximalaya.ting.android.opensdk.util;

import java.util.List;
import org.litepal.b.d;

class XiMaDataSupport$3 extends MyAsyncTask<Void, Void, List<T>>
{
  protected List<T> doInBackground(Void[] paramArrayOfVoid)
  {
    return d.findAll(this.val$modelClass, this.val$isEager, this.val$ids);
  }

  protected void onPostExecute(List<T> paramList)
  {
    if (this.val$callback == null)
      return;
    this.val$callback.onResult(paramList);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.XiMaDataSupport.3
 * JD-Core Version:    0.6.0
 */