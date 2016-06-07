package com.clilystudio.netbook;

import android.content.Context;
import java.util.Properties;

public final class b
{
  private static b b;
  private Context a;

  public static b a(Context paramContext)
  {
    if (b == null)
    {
      b localb = new b();
      b = localb;
      localb.a = paramContext;
    }
    return b;
  }

  // ERROR //
  private void b(Properties paramProperties)
  {
    v2 = 0x0;
    :try_start_0
    v0 = p0.com.clilystudio.netbook.b;->a;
    v1 = "config";
    v3 = 0x0;
    v0 = v0.getDir(v1, v3);
    v3 = new File();
    v1 = "config";
    v3.<init>(v0, v1);
    v1 = new FileOutputStream();
    v1.<init>(v3);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    v0 = 0x0;
    :try_start_1
    p1.store(v1, v0);
    v1.flush();
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v1.close();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    :cond_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v1 = v2;
    :goto_1
    :try_start_3
    v0.printStackTrace();
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    if (v1 != 0) {
		v1.close();
    }
    :try_start_4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    goto :goto_0
    :catch_1
    move-exception v0
    goto :goto_0
    :catchall_0
    move-exception v0
    :goto_2
    if (v2 != 0) {
		v2.close();
    }
    :try_start_5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    :cond_1
    :goto_3
    throw v0
    :catch_2
    move-exception v0
    goto :goto_0
    :catch_3
    move-exception v1
    goto :goto_3
    :catchall_1
    move-exception v0
    v2 = v1;
    goto :goto_2
    :catch_4
    move-exception v0
    goto :goto_1
  }

  // ERROR //
  public final Properties a()
  {
    v1 = 0x0;
    v2 = new Properties();
    v2.<init>();
    :try_start_0
    v0 = p0.com.clilystudio.netbook.b;->a;
    v3 = "config";
    v4 = 0x0;
    v3 = v0.getDir(v3, v4);
    v0 = new FileInputStream();
    v4 = new StringBuilder();
    v4.<init>();
    v3 = v3.getPath();
    v3 = v4.append(v3);
    v4 = Ljava/io/File;->separator;
    v3 = v3.append(v4);
    v4 = "config";
    v3 = v3.append(v4);
    v3 = v3.toString();
    v0.<init>(v3);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :try_start_1
    v2.load(v0);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v0.close();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    :cond_0
    :goto_0
    return v2;
    :catch_0
    move-exception v0
    v0 = v1;
    :goto_1
    if (v0 != 0) {
		v0.close();
    }
    :try_start_3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    goto :goto_0
    :catch_1
    move-exception v0
    goto :goto_0
    :catchall_0
    move-exception v0
    :goto_2
    if (v1 != 0) {
		v1.close();
    }
    :try_start_4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    :cond_1
    :goto_3
    throw v0
    :catch_2
    move-exception v0
    goto :goto_0
    :catch_3
    move-exception v1
    goto :goto_3
    :catchall_1
    move-exception v1
    v5 = v1;
    v1 = v0;
    v0 = v5;
    goto :goto_2
    :catch_4
    move-exception v1
    goto :goto_1
  }

  public final void a(String paramString1, String paramString2)
  {
    Properties localProperties = a();
    localProperties.setProperty(paramString1, paramString2);
    b(localProperties);
  }

  public final void a(Properties paramProperties)
  {
    Properties localProperties = a();
    localProperties.putAll(paramProperties);
    b(localProperties);
  }

  public final void a(String[] paramArrayOfString)
  {
    Properties localProperties = a();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      localProperties.remove(paramArrayOfString[j]);
    b(localProperties);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.b
 * JD-Core Version:    0.6.0
 */