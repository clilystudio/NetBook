package com.clilystudio.app.netbook.reader;

import android.os.Bundle;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;

public class ReaderWebPageFragment extends WebPageFragment
{
  private int a;

  public static ReaderWebPageFragment a(int paramInt, String paramString)
  {
    ReaderWebPageFragment localReaderWebPageFragment = new ReaderWebPageFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("MODE", paramInt);
    localBundle.putString("KEY", paramString);
    localReaderWebPageFragment.setArguments(localBundle);
    return localReaderWebPageFragment;
  }

  public static ReaderWebPageFragment a(int paramInt1, String paramString, int paramInt2)
  {
    ReaderWebPageFragment localReaderWebPageFragment = new ReaderWebPageFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("MODE", paramInt1);
    localBundle.putString("KEY", paramString);
    localBundle.putInt("CHAPTER_INDEX", paramInt2);
    localReaderWebPageFragment.setArguments(localBundle);
    return localReaderWebPageFragment;
  }

  public static ReaderWebPageFragment a(int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    ReaderWebPageFragment localReaderWebPageFragment = new ReaderWebPageFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("MODE", paramInt1);
    localBundle.putString("KEY", paramString1);
    localBundle.putInt("CHAPTER_INDEX", paramInt2);
    localBundle.putString("CHAPTER_URL", paramString2);
    localReaderWebPageFragment.setArguments(localBundle);
    return localReaderWebPageFragment;
  }

  public static ReaderWebPageFragment a(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    ReaderWebPageFragment localReaderWebPageFragment = new ReaderWebPageFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("MODE", paramInt);
    localBundle.putString("SG_MD", paramString1);
    localBundle.putString("KEY", paramString2);
    localBundle.putString("SG_CMD", paramString3);
    localBundle.putString("CHAPTER_URL", paramString4);
    localBundle.putString("SG_CHAPTER", paramString5);
    localReaderWebPageFragment.setArguments(localBundle);
    return localReaderWebPageFragment;
  }

  protected final String a()
  {
    this.a = getArguments().getInt("MODE");
    String str = getArguments().getString("KEY");
    b.a();
    b.b();
    switch (this.a)
    {
    case 5:
    default:
      return ApiService.Q(str);
    case 4:
      return ApiService.S(str);
    case 2:
      return ApiService.R(str);
    case 6:
      return ApiService.b(str, getArguments().getInt("CHAPTER_INDEX"), getArguments().getString("CHAPTER_URL"));
    case 7:
      return ApiService.a(getArguments().getString("SG_MD"), str, getArguments().getString("SG_CMD"), getArguments().getString("CHAPTER_URL"), getArguments().getString("SG_CHAPTER"));
    case 8:
      return ApiService.a(str, getArguments().getInt("CHAPTER_INDEX"));
    case 3:
    }
    return ApiService.a(str, getArguments().getInt("CHAPTER_INDEX"), getArguments().getString("CHAPTER_URL"));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ReaderWebPageFragment
 * JD-Core Version:    0.6.2
 */