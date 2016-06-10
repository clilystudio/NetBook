package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import java.io.Serializable;
import org.json.JSONObject;
import u.a.c;
import u.a.f;
import u.a.g;

public class UpdateResponse extends f
  implements Serializable
{
  public boolean delta = false;
  public boolean hasUpdate = false;
  public String new_md5;
  public String origin;
  public String patch_md5;
  public String path;
  public String proto_ver;
  public String size;
  public String target_size;
  public String updateLog = null;
  public String version = null;

  public UpdateResponse(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.hasUpdate = "Yes".equalsIgnoreCase(paramJSONObject.optString("update"));
      if (this.hasUpdate)
      {
        this.updateLog = paramJSONObject.getString("update_log");
        this.version = paramJSONObject.getString("version");
        this.path = paramJSONObject.getString("path");
        this.target_size = paramJSONObject.optString("target_size");
        this.new_md5 = paramJSONObject.optString("new_md5");
        this.delta = paramJSONObject.optBoolean("delta");
        if (this.delta)
        {
          this.patch_md5 = paramJSONObject.optString("patch_md5");
          this.size = paramJSONObject.optString("size");
          this.origin = paramJSONObject.optString("origin");
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public String a(Context paramContext, boolean paramBoolean)
  {
    String str1 = paramContext.getString(c.a(paramContext).d("UMNewVersion"));
    String str2 = paramContext.getString(c.a(paramContext).d("UMTargetSize"));
    String str3 = paramContext.getString(c.a(paramContext).d("UMUpdateSize"));
    String str4 = paramContext.getString(c.a(paramContext).d("UMUpdateContent"));
    String str5 = paramContext.getString(c.a(paramContext).d("UMDialog_InstallAPK"));
    if (paramBoolean)
    {
      Object[] arrayOfObject3 = new Object[5];
      arrayOfObject3[0] = str1;
      arrayOfObject3[1] = this.version;
      arrayOfObject3[2] = str5;
      arrayOfObject3[3] = str4;
      arrayOfObject3[4] = this.updateLog;
      return String.format("%s %s\n%s\n\n%s\n%s\n", arrayOfObject3);
    }
    Object[] arrayOfObject2;
    if (this.delta)
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = str3;
      arrayOfObject2[1] = g.c(this.size);
    }
    for (String str6 = String.format("\n%s %s", arrayOfObject2); ; str6 = "")
    {
      Object[] arrayOfObject1 = new Object[7];
      arrayOfObject1[0] = str1;
      arrayOfObject1[1] = this.version;
      arrayOfObject1[2] = str2;
      arrayOfObject1[3] = g.c(this.target_size);
      arrayOfObject1[4] = str6;
      arrayOfObject1[5] = str4;
      arrayOfObject1[6] = this.updateLog;
      return String.format("%s %s\n%s %s%s\n\n%s\n%s\n", arrayOfObject1);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.UpdateResponse
 * JD-Core Version:    0.6.0
 */