package com.ximalaya.ting.android.opensdk.util;

import android.content.Context;
import android.os.Environment;
import java.io.File;

public class FileUtilBase
{
  public static String getAdsCacheDir(Context paramContext, String paramString)
  {
    if ("mounted".equals(Environment.getExternalStorageState()));
    for (String str = Environment.getExternalStorageDirectory().getPath() + "/Android/data/" + paramContext.getPackageName() + "/files/ads"; ; str = paramContext.getFilesDir().getPath() + "/ads")
    {
      File localFile = new File(str);
      if (!localFile.exists())
        localFile.mkdirs();
      return str + File.separator + paramString;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.FileUtilBase
 * JD-Core Version:    0.6.0
 */