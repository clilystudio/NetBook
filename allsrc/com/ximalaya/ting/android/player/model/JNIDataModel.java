package com.ximalaya.ting.android.player.model;

public class JNIDataModel
{
  public byte[] buf;
  public int bufSize = 0;
  public String filePath;
  public long fileSize;
  public int status;

  public JNIDataModel()
  {
  }

  public JNIDataModel(String paramString, long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.filePath = paramString;
    this.fileSize = paramLong;
    this.buf = paramArrayOfByte;
    this.bufSize = paramInt1;
    this.status = paramInt2;
  }

  public JNIDataModel(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.buf = paramArrayOfByte;
    this.bufSize = paramInt1;
    this.status = paramInt2;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.model.JNIDataModel
 * JD-Core Version:    0.6.0
 */