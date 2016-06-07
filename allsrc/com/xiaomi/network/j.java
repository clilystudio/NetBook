package com.xiaomi.network;

import com.xiaomi.common.logger.thrift.mfs.b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

public class j
{
  public List<b> a()
  {
    try
    {
      ArrayList localArrayList = f.g().f();
      return localArrayList;
    }
    catch (JSONException localJSONException)
    {
    }
    return null;
  }

  public double b()
  {
    c localc = f.g().a("f3.mi-stat.gslb.mi-idc.com");
    double d = 0.1D;
    if (localc != null)
      d = localc.e();
    return d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.network.j
 * JD-Core Version:    0.6.0
 */