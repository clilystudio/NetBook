package android.support.v4.app;

import android.view.View;
import android.view.Window;

class FragmentActivity$2
  implements FragmentContainer
{
  public View findViewById(int paramInt)
  {
    return this.this$0.findViewById(paramInt);
  }

  public boolean hasView()
  {
    Window localWindow = this.this$0.getWindow();
    return (localWindow != null) && (localWindow.peekDecorView() != null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentActivity.2
 * JD-Core Version:    0.6.0
 */