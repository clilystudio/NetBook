package com.nostra13.universalimageloader.core.assist;

public enum FailReason$FailType
{
  static
  {
    DECODING_ERROR = new FailType("DECODING_ERROR", 1);
    NETWORK_DENIED = new FailType("NETWORK_DENIED", 2);
    OUT_OF_MEMORY = new FailType("OUT_OF_MEMORY", 3);
    UNKNOWN = new FailType("UNKNOWN", 4);
    FailType[] arrayOfFailType = new FailType[5];
    arrayOfFailType[0] = IO_ERROR;
    arrayOfFailType[1] = DECODING_ERROR;
    arrayOfFailType[2] = NETWORK_DENIED;
    arrayOfFailType[3] = OUT_OF_MEMORY;
    arrayOfFailType[4] = UNKNOWN;
    a = arrayOfFailType;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.assist.FailReason.FailType
 * JD-Core Version:    0.6.0
 */