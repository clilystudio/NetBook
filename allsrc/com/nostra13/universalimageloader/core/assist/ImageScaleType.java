package com.nostra13.universalimageloader.core.assist;

public enum ImageScaleType
{
  static
  {
    IN_SAMPLE_POWER_OF_2 = new ImageScaleType("IN_SAMPLE_POWER_OF_2", 1);
    IN_SAMPLE_INT = new ImageScaleType("IN_SAMPLE_INT", 2);
    EXACTLY = new ImageScaleType("EXACTLY", 3);
    EXACTLY_STRETCHED = new ImageScaleType("EXACTLY_STRETCHED", 4);
    ImageScaleType[] arrayOfImageScaleType = new ImageScaleType[5];
    arrayOfImageScaleType[0] = NONE;
    arrayOfImageScaleType[1] = IN_SAMPLE_POWER_OF_2;
    arrayOfImageScaleType[2] = IN_SAMPLE_INT;
    arrayOfImageScaleType[3] = EXACTLY;
    arrayOfImageScaleType[4] = EXACTLY_STRETCHED;
    a = arrayOfImageScaleType;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.assist.ImageScaleType
 * JD-Core Version:    0.6.0
 */