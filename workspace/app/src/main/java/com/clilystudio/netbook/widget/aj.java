package com.clilystudio.netbook.widget;

import android.text.InputFilter;
import android.text.Spanned;

final class aj
  implements InputFilter
{
  private aj(NicknameEditText paramNicknameEditText)
  {
  }

  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    int i = 0;
    String str = this.a.getText().toString();
    int j = 0;
    if (i < str.length())
    {
      if (Character.isLetterOrDigit(str.charAt(i)));
      for (int k = 1; ; k = 2)
      {
        j += k;
        i++;
        break;
      }
    }
    if (j >= 28)
      paramCharSequence = "";
    return paramCharSequence;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.aj
 * JD-Core Version:    0.6.0
 */