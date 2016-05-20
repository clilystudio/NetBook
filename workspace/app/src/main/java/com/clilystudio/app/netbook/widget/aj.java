package com.clilystudio.app.netbook.widget;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.aj
 * JD-Core Version:    0.6.2
 */