package cn.sharesdk.framework;

import android.os.Build;
import android.os.Build.VERSION;
import cn.sharesdk.framework.statistics.b.f.a;
import com.mob.tools.b.a;
import com.mob.tools.b.e;
import java.util.HashMap;

public abstract class Service$ServiceEvent
{
  private final int PLATFORM = 1;
  protected Service service;

  public Service$ServiceEvent(Service paramService)
  {
    this.service = paramService;
  }

  protected HashMap<String, Object> filterShareContent(int paramInt, Platform.ShareParams paramShareParams, HashMap<String, Object> paramHashMap)
  {
    f.a locala = ShareSDK.getPlatform(ShareSDK.platformIdToName(paramInt)).filterShareContent(paramShareParams, paramHashMap);
    HashMap localHashMap = new HashMap();
    localHashMap.put("shareID", locala.a);
    localHashMap.put("shareContent", new e().a(locala.toString()));
    cn.sharesdk.framework.utils.d.a().i("filterShareContent ==>>%s", new Object[] { localHashMap });
    return localHashMap;
  }

  protected HashMap<String, Object> toMap()
  {
    HashMap localHashMap = new HashMap();
    a locala = a.a(Service.a(this.service));
    localHashMap.put("deviceid", locala.j());
    localHashMap.put("appkey", this.service.getAppKey());
    localHashMap.put("apppkg", locala.k());
    localHashMap.put("appver", Integer.valueOf(locala.m()));
    localHashMap.put("sdkver", Integer.valueOf(this.service.getServiceVersionInt()));
    localHashMap.put("plat", Integer.valueOf(1));
    localHashMap.put("networktype", locala.i());
    localHashMap.put("deviceData", Build.MODEL + "|" + String.valueOf(Build.VERSION.SDK_INT) + "|" + Build.MANUFACTURER + "|" + locala.f() + "|" + locala.e());
    return localHashMap;
  }

  public final String toString()
  {
    return new e().a(toMap());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.Service.ServiceEvent
 * JD-Core Version:    0.6.0
 */