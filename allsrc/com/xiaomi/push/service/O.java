package com.xiaomi.push.service;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alipay.sdk.b.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public final class O
{
  private static Object a = new Object();
  private static Map<String, Queue<String>> b = new HashMap();

  public static boolean a(XMPushService paramXMPushService, String paramString1, String paramString2)
  {
    synchronized (a)
    {
      SharedPreferences localSharedPreferences = paramXMPushService.getSharedPreferences("push_message_ids", 0);
      Object localObject3 = (Queue)b.get(paramString1);
      if (localObject3 == null)
      {
        String[] arrayOfString = localSharedPreferences.getString(paramString1, "").split(",");
        localObject3 = new LinkedList();
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
          ((Queue)localObject3).add(arrayOfString[j]);
        b.put(paramString1, localObject3);
      }
      if (((Queue)localObject3).contains(paramString2))
        return true;
      ((Queue)localObject3).add(paramString2);
      if (((Queue)localObject3).size() > 10)
        ((Queue)localObject3).poll();
      String str = b.a((Collection)localObject3, ",");
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString(paramString1, str);
      localEditor.commit();
      return false;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.O
 * JD-Core Version:    0.6.0
 */