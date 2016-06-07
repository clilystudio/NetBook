package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.model.HotKeywordResult;

final class bM extends e<String, Void, HotKeywordResult>
{
  private bM(SearchActivity paramSearchActivity)
  {
  }

  private HotKeywordResult a()
  {
    try
    {
      HotKeywordResult localHotKeywordResult = c().b();
      return localHotKeywordResult;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bM
 * JD-Core Version:    0.6.0
 */