package android.support.v7.widget;

import android.database.Observable;
import java.util.ArrayList;

final class ai extends Observable<aj>
{
  public final void a()
  {
    for (int i = -1 + this.mObservers.size(); i >= 0; i--)
      ((aj)this.mObservers.get(i)).a();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    for (int i = -1 + this.mObservers.size(); i >= 0; i--)
      ((aj)this.mObservers.get(i)).a(paramInt1, 1);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    for (int i = -1 + this.mObservers.size(); i >= 0; i--)
      ((aj)this.mObservers.get(i)).b(paramInt1, 1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ai
 * JD-Core Version:    0.6.0
 */