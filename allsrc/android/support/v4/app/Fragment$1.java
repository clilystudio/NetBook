package android.support.v4.app;

import android.view.View;

class Fragment$1
  implements FragmentContainer
{
  public View findViewById(int paramInt)
  {
    if (this.this$0.mView == null)
      throw new IllegalStateException("Fragment does not have a view");
    return this.this$0.mView.findViewById(paramInt);
  }

  public boolean hasView()
  {
    return this.this$0.mView != null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.Fragment.1
 * JD-Core Version:    0.6.0
 */