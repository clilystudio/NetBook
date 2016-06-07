package com.ximalaya.ting.android.player;

import java.nio.ByteBuffer;

class BufferItem
{
  private static final String TAG = "dl_mp3";
  public ByteBuffer bBuffer;
  private int dataSize;
  public int errorCode;
  public boolean fails;
  private int index = -1;
  private boolean lastChunk;

  public BufferItem()
  {
    Logger.log("dl_mp3", "======================BufferItem Constructor()");
    this.lastChunk = false;
    this.dataSize = 0;
  }

  public ByteBuffer getBuffer()
  {
    if (this.bBuffer.hasArray())
      return ByteBuffer.wrap(this.bBuffer.array());
    return ByteBuffer.allocate(0);
  }

  public int getDataSize()
  {
    return this.dataSize;
  }

  public int getIndex()
  {
    return this.index;
  }

  public boolean isLastChunk()
  {
    return this.lastChunk;
  }

  public void setBuffer(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.hasArray())
    {
      this.bBuffer = ByteBuffer.wrap(paramByteBuffer.array());
      this.dataSize = paramByteBuffer.array().length;
      Logger.log("dl_mp3", "======================BufferItem setBuffer0(" + this.dataSize + ")");
    }
  }

  public void setBuffer(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      this.bBuffer = ByteBuffer.wrap(paramArrayOfByte);
      this.dataSize = paramArrayOfByte.length;
      Logger.log("dl_mp3", "======================BufferItem setBuffer1(" + this.dataSize + ")");
    }
  }

  public void setIndex(int paramInt)
  {
    this.index = paramInt;
  }

  public void setLastChunk()
  {
    this.lastChunk = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.BufferItem
 * JD-Core Version:    0.6.0
 */