package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.File;

public class ImageObject
  implements Parcelable
{
  public static final Parcelable.Creator<ImageObject> CREATOR;
  private static final int DATA_SIZE = 2097152;
  public byte[] imageData;
  public String imagePath;

  static
  {
    CREATOR = new ImageObject.1();
  }

  public ImageObject()
  {
  }

  public ImageObject(Parcel paramParcel)
  {
    this.imageData = paramParcel.createByteArray();
    this.imagePath = paramParcel.readString();
  }

  public boolean checkArgs()
  {
    if ((this.imageData == null) && (this.imagePath == null))
    {
      new Throwable("imageData and imagePath are null").printStackTrace();
      return false;
    }
    if ((this.imageData != null) && (this.imageData.length > DATA_SIZE))
    {
      new Throwable("imageData is too large").printStackTrace();
      return false;
    }
    if ((this.imagePath != null) && (this.imagePath.length() > 512))
    {
      new Throwable("imagePath is too length").printStackTrace();
      return false;
    }
    if (this.imagePath != null)
      try
      {
        File localFile = new File(this.imagePath);
        if ((!localFile.exists()) || (localFile.length() == 0L) || (localFile.length() > 10485760L))
        {
          new Throwable("checkArgs fail, image content is too large or not exists").printStackTrace();
          return false;
        }
      }
      catch (Throwable localThrowable)
      {
        new Throwable("checkArgs fail, image content is too large or not exists").printStackTrace();
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
    return 2;
  }

  // ERROR //
  public final void setImageObject(android.graphics.Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 84	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 85	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: aload_1
    //   9: getstatic 91	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   12: bipush 85
    //   14: aload_2
    //   15: invokevirtual 97	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   18: pop
    //   19: aload_0
    //   20: aload_2
    //   21: invokevirtual 100	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   24: putfield 37	com/sina/weibo/sdk/api/ImageObject:imageData	[B
    //   27: aload_2
    //   28: invokevirtual 103	java/io/ByteArrayOutputStream:close	()V
    //   31: return
    //   32: astore 11
    //   34: invokestatic 109	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   37: aload 11
    //   39: invokevirtual 115	com/mob/tools/log/d:d	(Ljava/lang/Throwable;)I
    //   42: pop
    //   43: return
    //   44: astore_3
    //   45: aconst_null
    //   46: astore_2
    //   47: invokestatic 109	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   50: aload_3
    //   51: invokevirtual 115	com/mob/tools/log/d:d	(Ljava/lang/Throwable;)I
    //   54: pop
    //   55: aload_2
    //   56: ifnull -25 -> 31
    //   59: aload_2
    //   60: invokevirtual 103	java/io/ByteArrayOutputStream:close	()V
    //   63: return
    //   64: astore 8
    //   66: invokestatic 109	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   69: aload 8
    //   71: invokevirtual 115	com/mob/tools/log/d:d	(Ljava/lang/Throwable;)I
    //   74: pop
    //   75: return
    //   76: astore 4
    //   78: aconst_null
    //   79: astore_2
    //   80: aload_2
    //   81: ifnull +7 -> 88
    //   84: aload_2
    //   85: invokevirtual 103	java/io/ByteArrayOutputStream:close	()V
    //   88: aload 4
    //   90: athrow
    //   91: astore 5
    //   93: invokestatic 109	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   96: aload 5
    //   98: invokevirtual 115	com/mob/tools/log/d:d	(Ljava/lang/Throwable;)I
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
    paramParcel.writeByteArray(this.imageData);
    paramParcel.writeString(this.imagePath);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.ImageObject
 * JD-Core Version:    0.6.0
 */