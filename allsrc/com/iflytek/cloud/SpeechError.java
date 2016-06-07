package com.iflytek.cloud;

import com.iflytek.cloud.a.b.a.a;
import com.iflytek.cloud.resource.Resource;

public class SpeechError extends Exception
{
  public static final int TIP_ERROR_ALREADY_EXIST = 66;
  public static final int TIP_ERROR_IVP_EXTRA_RGN_SOPPORT = 56;
  public static final int TIP_ERROR_IVP_GENERAL = 55;
  public static final int TIP_ERROR_IVP_MODEL_NOT_FOUND_IN_HBASE = 64;
  public static final int TIP_ERROR_IVP_MUCH_NOISE = 58;
  public static final int TIP_ERROR_IVP_NO_ENOUGH_AUDIO = 63;
  public static final int TIP_ERROR_IVP_TEXT_NOT_MATCH = 62;
  public static final int TIP_ERROR_IVP_TOO_LOW = 59;
  public static final int TIP_ERROR_IVP_TRUNCATED = 57;
  public static final int TIP_ERROR_IVP_UTTER_TOO_SHORT = 61;
  public static final int TIP_ERROR_IVP_ZERO_AUDIO = 60;
  public static final int TIP_ERROR_NOT_FOUND = 65;
  private static final long serialVersionUID = 4434424251478985596L;
  private int a = 0;
  private String b = "";

  public SpeechError(int paramInt)
  {
    this.a = paramInt;
    if (paramInt < 20001)
      if (this.a != 10118);
    while (true)
    {
      switch (this.a)
      {
      default:
      case 11600:
      case 11601:
      case 11602:
      case 11603:
      case 11604:
      case 11605:
      case 11606:
      case 11607:
      case 11608:
      case 11610:
      case 11700:
      case 11701:
      case 11702:
      case 11703:
      case 11704:
      case 11705:
      case 11706:
      case 11707:
      case 11708:
      case 11709:
      case 11710:
      case 11711:
      }
      while (true)
      {
        this.b = Resource.getErrorDescription(i);
        return;
        if ((10106 == this.a) || (10107 == this.a) || (10124 == this.a))
        {
          a.a("sdk errorcode", this.a);
          i = 7;
          break;
        }
        if (this.a == 10110)
        {
          i = 32;
          break;
        }
        if (this.a == 10111)
        {
          i = 28;
          break;
        }
        if ((this.a >= 10200) && (this.a < 10300))
        {
          i = 3;
          break;
        }
        if ((this.a == 10117) || (this.a == 10101))
        {
          i = 16;
          break;
        }
        if (this.a == 10113)
        {
          i = 17;
          break;
        }
        if (this.a == 10116)
        {
          i = 65;
          break;
        }
        if (this.a == 10121)
        {
          i = 66;
          break;
        }
        if ((this.a >= 10400) && (this.a <= 10407))
        {
          i = 18;
          break;
        }
        if ((this.a >= 11000) && (this.a < 11099))
        {
          if (this.a == 11005)
          {
            i = 23;
            break;
          }
          if (this.a == 11006)
          {
            i = 24;
            break;
          }
          i = 18;
          break;
        }
        if (this.a == 10129)
        {
          i = 19;
          break;
        }
        if (this.a == 10109)
        {
          i = 20;
          break;
        }
        if (this.a == 10702)
        {
          i = 21;
          break;
        }
        if ((this.a >= 10500) && (this.a < 10600))
        {
          i = 22;
          break;
        }
        if ((this.a >= 11200) && (this.a <= 11250))
        {
          i = 25;
          break;
        }
        if ((this.a >= 14000) && (this.a <= 14006))
        {
          i = 31;
          break;
        }
        if ((this.a >= 16000) && (this.a <= 16006))
        {
          i = 31;
          break;
        }
        if (11401 == this.a)
        {
          i = 35;
          break;
        }
        if (11402 == this.a)
        {
          i = 36;
          break;
        }
        if (11403 == this.a)
        {
          i = 37;
          break;
        }
        if (11404 == this.a)
        {
          i = 38;
          break;
        }
        if (11405 == this.a)
        {
          i = 39;
          break;
        }
        if (11406 == this.a)
        {
          i = 40;
          break;
        }
        if (11407 == this.a)
        {
          i = 41;
          break;
        }
        if (11408 != this.a)
          break label1150;
        i = 42;
        break;
        if (this.a >= 30000)
          break label1150;
        if (this.a == 20001)
        {
          i = 1;
          break;
        }
        if (this.a == 20002)
        {
          i = 2;
          break;
        }
        if (this.a == 20003)
        {
          i = 3;
          break;
        }
        if (this.a == 20004)
        {
          i = 5;
          break;
        }
        if (this.a == 20005)
        {
          i = 10;
          break;
        }
        if (this.a == 20006)
        {
          i = 9;
          break;
        }
        if (this.a == 20007)
        {
          i = 12;
          break;
        }
        if (this.a == 20008)
          break;
        if (this.a == 20009)
        {
          i = 13;
          break;
        }
        if (this.a == 20010)
        {
          i = 14;
          break;
        }
        if (this.a == 20012)
        {
          i = 7;
          break;
        }
        if (this.a == 21003)
        {
          i = 28;
          break;
        }
        if ((this.a == 21002) || (this.a == 21001))
        {
          i = 29;
          break;
        }
        i = 30;
        break;
        i = 55;
        continue;
        i = 56;
        continue;
        i = 57;
        continue;
        i = 58;
        continue;
        i = 59;
        continue;
        i = 60;
        continue;
        i = 61;
        continue;
        i = 62;
        continue;
        i = 63;
        continue;
        i = 64;
        continue;
        i = 43;
        continue;
        i = 44;
        continue;
        i = 45;
        continue;
        i = 46;
        continue;
        i = 47;
        continue;
        i = 48;
        continue;
        i = 49;
        continue;
        i = 50;
        continue;
        i = 51;
        continue;
        i = 52;
        continue;
        i = 53;
        continue;
        i = 54;
      }
      label1150: i = 3;
    }
  }

  public SpeechError(int paramInt, String paramString)
  {
    this(paramInt);
    if ("wfr".equals(paramString))
    {
      if (10118 != paramInt)
        break label31;
      this.b = Resource.getErrorDescription(33);
    }
    label31: 
    do
      return;
    while (10119 != paramInt);
    this.b = Resource.getErrorDescription(34);
  }

  public SpeechError(Exception paramException)
  {
    this.a = 20999;
    this.b = paramException.toString();
  }

  public int getErrorCode()
  {
    return this.a;
  }

  public String getErrorDescription()
  {
    return this.b;
  }

  public String getHtmlDescription(boolean paramBoolean)
  {
    String str1 = this.b + "...";
    if (paramBoolean)
    {
      String str2 = str1 + "<br>(";
      String str3 = str2 + Resource.getErrorTag(0) + ":";
      str1 = str3 + this.a + ")";
    }
    return str1;
  }

  public String getPlainDescription(boolean paramBoolean)
  {
    String str1 = this.b;
    if (paramBoolean)
    {
      String str2 = str1 + ".";
      String str3 = str2 + "(" + Resource.getErrorTag(0) + ":";
      str1 = str3 + this.a + ")";
    }
    return str1;
  }

  public String toString()
  {
    return getPlainDescription(true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechError
 * JD-Core Version:    0.6.0
 */