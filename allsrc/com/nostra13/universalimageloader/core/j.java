package com.nostra13.universalimageloader.core;

import com.nostra13.universalimageloader.core.download.ImageDownloader;
import java.io.InputStream;

final class j
  implements ImageDownloader
{
  private final ImageDownloader a;

  public j(ImageDownloader paramImageDownloader)
  {
    this.a = paramImageDownloader;
  }

  public final InputStream a(String paramString, Object paramObject)
  {
    switch (h.a[com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme.ofUri(paramString).ordinal()])
    {
    default:
      return this.a.a(paramString, paramObject);
    case 1:
    case 2:
    }
    throw new IllegalStateException();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.j
 * JD-Core Version:    0.6.0
 */