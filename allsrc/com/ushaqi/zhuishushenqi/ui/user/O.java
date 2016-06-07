package com.ushaqi.zhuishushenqi.ui.user;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PayChargeRecord;
import com.ushaqi.zhuishushenqi.model.PayChargeRecord.Order;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class O extends e<String, Void, List<PayChargeRecord.Order>>
{
  private O(PayChargeActivity paramPayChargeActivity)
  {
  }

  private List<PayChargeRecord.Order> a(String[] paramArrayOfString)
  {
    try
    {
      PayChargeRecord localPayChargeRecord = b.b().a(paramArrayOfString[0], PayChargeActivity.a(this.a).size(), 10);
      if ((localPayChargeRecord != null) && (localPayChargeRecord.isOk()) && (localPayChargeRecord.getOrders() != null))
      {
        List localList = Arrays.asList(localPayChargeRecord.getOrders());
        return localList;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.O
 * JD-Core Version:    0.6.0
 */