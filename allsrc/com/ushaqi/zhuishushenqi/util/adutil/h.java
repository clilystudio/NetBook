package com.ushaqi.zhuishushenqi.util.adutil;

import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.event.B;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.model.AdvertData;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

final class h
  implements InvocationHandler
{
  h(BaiduShelfAdContainer paramBaiduShelfAdContainer, String paramString)
  {
  }

  public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    String str = paramMethod.getName();
    int i = -1;
    switch (str.hashCode())
    {
    default:
      switch (i)
      {
      default:
      case 0:
      }
    case -2145385252:
    case -2145577196:
    }
    while (true)
    {
      return null;
      if (!str.equals("onNativeLoad"))
        break;
      i = 0;
      break;
      if (!str.equals("onNativeFail"))
        break;
      i = 1;
      break;
      BaiduShelfAdContainer.a(Class.forName("com.baidu.mobad.feeds.NativeResponse"));
      Iterator localIterator = ((List)paramArrayOfObject[0]).iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        BaiduShelfAdContainer.BaiduAdvert localBaiduAdvert = new BaiduShelfAdContainer.BaiduAdvert();
        AdvertData localAdvertData = new AdvertData();
        localAdvertData.setTitle((String)k.a(BaiduShelfAdContainer.a(), "getTitle", null, localObject, new Object[0]));
        localAdvertData.setApkSize(((Long)k.a(BaiduShelfAdContainer.a(), "getAppSize", null, localObject, new Object[0])).intValue());
        localAdvertData.setApk(((Boolean)k.a(BaiduShelfAdContainer.a(), "isDownloadApp", null, localObject, new Object[0])).booleanValue());
        localAdvertData.setImg((String)k.a(BaiduShelfAdContainer.a(), "getIconUrl", null, localObject, new Object[0]));
        localAdvertData.setDesc((String)k.a(BaiduShelfAdContainer.a(), "getDesc", null, localObject, new Object[0]));
        localBaiduAdvert.setResponse(localObject);
        localBaiduAdvert.setData(localAdvertData);
        i.a().c(new B(localBaiduAdvert, this.a));
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.adutil.h
 * JD-Core Version:    0.6.0
 */