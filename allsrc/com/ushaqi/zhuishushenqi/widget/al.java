package com.ushaqi.zhuishushenqi.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ushaqi.zhuishushenqi.model.PaySheetItem;
import java.util.List;

final class al
  implements DialogInterface.OnClickListener
{
  al(ak paramak)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (ak.a(this.a) != null)
      ak.a(this.a).a((PaySheetItem)ak.b(this.a).get(paramInt));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.al
 * JD-Core Version:    0.6.0
 */