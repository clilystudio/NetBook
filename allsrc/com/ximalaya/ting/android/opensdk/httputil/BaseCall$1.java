package com.ximalaya.ting.android.opensdk.httputil;

import android.text.TextUtils;
import com.squareup.okhttp.C;
import com.squareup.okhttp.I;
import com.squareup.okhttp.i;
import java.io.IOException;

class BaseCall$1
  implements i
{
  public void onFailure(C paramC, IOException paramIOException)
  {
    if (TextUtils.isEmpty(paramIOException.getMessage()))
    {
      this.val$callback.onFailure(604, "http error");
      return;
    }
    this.val$callback.onFailure(604, paramIOException.getMessage());
  }

  public void onResponse(I paramI)
  {
    this.val$callback.onResponse(paramI);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.BaseCall.1
 * JD-Core Version:    0.6.0
 */