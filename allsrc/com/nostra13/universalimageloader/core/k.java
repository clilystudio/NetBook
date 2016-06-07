package com.nostra13.universalimageloader.core;

import com.nostra13.universalimageloader.core.assist.b;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import java.io.InputStream;

final class k
  implements ImageDownloader
{
  private final ImageDownloader a;

  public k(ImageDownloader paramImageDownloader)
  {
    this.a = paramImageDownloader;
  }

  public final InputStream a(String paramString, Object paramObject)
  {
    InputStream localInputStream = this.a.a(paramString, paramObject);
    switch (h.a[com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme.ofUri(paramString).ordinal()])
    {
    default:
      return localInputStream;
    case 1:
    case 2:
    }
    return new b(localInputStream);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.k
 * JD-Core Version:    0.6.0
 */