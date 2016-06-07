package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class WebpageObject
  implements Parcelable
{
  public static final Parcelable.Creator<WebpageObject> CREATOR;
  public static final String EXTRA_KEY_DEFAULTTEXT = "extra_key_defaulttext";
  public String actionUrl;
  public String defaultText;
  public String description;
  public String identify;
  public String schema;
  public byte[] thumbData;
  public String title;

  static
  {
    CREATOR = new WebpageObject.1();
  }

  public WebpageObject()
  {
  }

  public WebpageObject(Parcel paramParcel)
  {
    this.actionUrl = paramParcel.readString();
    this.schema = paramParcel.readString();
    this.identify = paramParcel.readString();
    this.title = paramParcel.readString();
    this.description = paramParcel.readString();
    this.thumbData = paramParcel.createByteArray();
  }

  public boolean checkArgs()
  {
    if ((this.actionUrl == null) || (this.actionUrl.length() > 512))
    {
      cn.sharesdk.framework.utils.d.a().d("checkArgs fail, actionUrl is invalid", new Object[0]);
      return false;
    }
    if ((this.identify == null) || (this.identify.length() > 512))
    {
      cn.sharesdk.framework.utils.d.a().d("checkArgs fail, identify is invalid", new Object[0]);
      return false;
    }
    if ((this.thumbData == null) || (this.thumbData.length > 32768))
    {
      if (this.thumbData != null);
      for (int i = this.thumbData.length; ; i = -1)
      {
        new Throwable("checkArgs fail, thumbData is invalid,size is " + i + "! more then 32768.").printStackTrace();
        return false;
      }
    }
    if ((this.title == null) || (this.title.length() > 512))
    {
      cn.sharesdk.framework.utils.d.a().d("checkArgs fail, title is invalid", new Object[0]);
      return false;
    }
    if ((this.description == null) || (this.description.length() > 1024))
    {
      cn.sharesdk.framework.utils.d.a().d("checkArgs fail, description is invalid", new Object[0]);
      return false;
    }
    return true;
  }

  public int describeContents()
  {
    return 0;
  }

  public int getObjType()
  {
    return 5;
  }

  // ERROR //
  public final void setThumbImage(android.graphics.Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 116	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 117	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: aload_1
    //   9: getstatic 123	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   12: bipush 85
    //   14: aload_2
    //   15: invokevirtual 129	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   18: pop
    //   19: aload_0
    //   20: aload_2
    //   21: invokevirtual 132	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   24: putfield 56	com/sina/weibo/sdk/api/WebpageObject:thumbData	[B
    //   27: aload_2
    //   28: invokevirtual 135	java/io/ByteArrayOutputStream:close	()V
    //   31: return
    //   32: astore 11
    //   34: invokestatic 70	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   37: aload 11
    //   39: invokevirtual 138	com/mob/tools/log/d:d	(Ljava/lang/Throwable;)I
    //   42: pop
    //   43: return
    //   44: astore_3
    //   45: aconst_null
    //   46: astore_2
    //   47: invokestatic 70	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   50: aload_3
    //   51: invokevirtual 138	com/mob/tools/log/d:d	(Ljava/lang/Throwable;)I
    //   54: pop
    //   55: aload_2
    //   56: ifnull -25 -> 31
    //   59: aload_2
    //   60: invokevirtual 135	java/io/ByteArrayOutputStream:close	()V
    //   63: return
    //   64: astore 8
    //   66: invokestatic 70	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   69: aload 8
    //   71: invokevirtual 138	com/mob/tools/log/d:d	(Ljava/lang/Throwable;)I
    //   74: pop
    //   75: return
    //   76: astore 4
    //   78: aconst_null
    //   79: astore_2
    //   80: aload_2
    //   81: ifnull +7 -> 88
    //   84: aload_2
    //   85: invokevirtual 135	java/io/ByteArrayOutputStream:close	()V
    //   88: aload 4
    //   90: athrow
    //   91: astore 5
    //   93: invokestatic 70	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   96: aload 5
    //   98: invokevirtual 138	com/mob/tools/log/d:d	(Ljava/lang/Throwable;)I
    //   101: pop
    //   102: goto -14 -> 88
    //   105: astore 4
    //   107: goto -27 -> 80
    //   110: astore_3
    //   111: goto -64 -> 47
    //
    // Exception table:
    //   from	to	target	type
    //   27	31	32	java/lang/Throwable
    //   0	8	44	java/lang/Throwable
    //   59	63	64	java/lang/Throwable
    //   0	8	76	finally
    //   84	88	91	java/lang/Throwable
    //   8	27	105	finally
    //   47	55	105	finally
    //   8	27	110	java/lang/Throwable
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.actionUrl);
    paramParcel.writeString(this.schema);
    paramParcel.writeString(this.identify);
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.description);
    paramParcel.writeByteArray(this.thumbData);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.WebpageObject
 * JD-Core Version:    0.6.0
 */