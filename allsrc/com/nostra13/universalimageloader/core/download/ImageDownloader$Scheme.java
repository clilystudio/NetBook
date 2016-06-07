package com.nostra13.universalimageloader.core.download;

import java.util.Locale;

public enum ImageDownloader$Scheme
{
  private String scheme;
  private String uriPrefix;

  static
  {
    FILE = new Scheme("FILE", 2, "file");
    CONTENT = new Scheme("CONTENT", 3, "content");
    ASSETS = new Scheme("ASSETS", 4, "assets");
    DRAWABLE = new Scheme("DRAWABLE", 5, "drawable");
    UNKNOWN = new Scheme("UNKNOWN", 6, "");
    Scheme[] arrayOfScheme = new Scheme[7];
    arrayOfScheme[0] = HTTP;
    arrayOfScheme[1] = HTTPS;
    arrayOfScheme[2] = FILE;
    arrayOfScheme[3] = CONTENT;
    arrayOfScheme[4] = ASSETS;
    arrayOfScheme[5] = DRAWABLE;
    arrayOfScheme[6] = UNKNOWN;
    a = arrayOfScheme;
  }

  private ImageDownloader$Scheme(String paramString)
  {
    this.scheme = paramString;
    this.uriPrefix = (paramString + "://");
  }

  private boolean a(String paramString)
  {
    return paramString.toLowerCase(Locale.US).startsWith(this.uriPrefix);
  }

  public static Scheme ofUri(String paramString)
  {
    if (paramString != null)
      for (Scheme localScheme : values())
        if (localScheme.a(paramString))
          return localScheme;
    return UNKNOWN;
  }

  public final String crop(String paramString)
  {
    if (!a(paramString))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = this.scheme;
      throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", arrayOfObject));
    }
    return paramString.substring(this.uriPrefix.length());
  }

  public final String wrap(String paramString)
  {
    return this.uriPrefix + paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme
 * JD-Core Version:    0.6.0
 */