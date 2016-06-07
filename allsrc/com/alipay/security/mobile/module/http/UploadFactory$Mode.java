package com.alipay.security.mobile.module.http;

public enum UploadFactory$Mode
{
  static
  {
    RPC_MPASS = new Mode("RPC_MPASS", 2);
    Mode[] arrayOfMode = new Mode[3];
    arrayOfMode[0] = RPC;
    arrayOfMode[1] = RPC_WALLET;
    arrayOfMode[2] = RPC_MPASS;
    a = arrayOfMode;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.security.mobile.module.http.UploadFactory.Mode
 * JD-Core Version:    0.6.0
 */