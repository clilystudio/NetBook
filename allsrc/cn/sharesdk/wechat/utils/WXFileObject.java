package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import java.io.File;

public class WXFileObject
  implements WXMediaMessage.IMediaObject
{
  public byte[] fileData;
  public String filePath;

  public WXFileObject()
  {
    this.fileData = null;
    this.filePath = null;
  }

  public WXFileObject(String paramString)
  {
    this.filePath = paramString;
  }

  public WXFileObject(byte[] paramArrayOfByte)
  {
    this.fileData = paramArrayOfByte;
  }

  public boolean checkArgs()
  {
    if (((this.fileData == null) || (this.fileData.length == 0)) && ((this.filePath == null) || (this.filePath.length() == 0)))
    {
      cn.sharesdk.framework.utils.d.a().w("checkArgs fail, both arguments is null", new Object[0]);
      return false;
    }
    if ((this.fileData != null) && (this.fileData.length > 10485760))
    {
      cn.sharesdk.framework.utils.d.a().w("checkArgs fail, fileData is too large", new Object[0]);
      return false;
    }
    if ((this.filePath != null) && (new File(this.filePath).length() > 10485760L))
    {
      cn.sharesdk.framework.utils.d.a().w("checkArgs fail, fileSize is too large", new Object[0]);
      return false;
    }
    return true;
  }

  public void serialize(Bundle paramBundle)
  {
    paramBundle.putByteArray("_wxfileobject_fileData", this.fileData);
    paramBundle.putString("_wxfileobject_filePath", this.filePath);
  }

  public void setFileData(byte[] paramArrayOfByte)
  {
    this.fileData = paramArrayOfByte;
  }

  public void setFilePath(String paramString)
  {
    this.filePath = paramString;
  }

  public int type()
  {
    return 6;
  }

  public void unserialize(Bundle paramBundle)
  {
    this.fileData = paramBundle.getByteArray("_wxfileobject_fileData");
    this.filePath = paramBundle.getString("_wxfileobject_filePath");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.WXFileObject
 * JD-Core Version:    0.6.0
 */