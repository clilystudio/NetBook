package cn.sharesdk.onekeyshare.theme.classic;

import android.os.Handler.Callback;
import android.os.Message;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;

class EditPage$6
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    ((HorizontalScrollView)EditPage.access$1400(this.this$0).getParent()).scrollTo(this.val$postSel * (this.val$dp_24 + this.val$dp_9), 0);
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.EditPage.6
 * JD-Core Version:    0.6.0
 */