package m.framework.ui.widget.slidingmenu;

import java.util.ArrayList;
import java.util.Iterator;

final class SlidingMenuGroup
{
  int id;
  private ArrayList<SlidingMenuItem> items = new ArrayList();
  String text;

  final SlidingMenuItem findItemById(int paramInt)
  {
    if (this.items == null)
      return null;
    Iterator localIterator = this.items.iterator();
    SlidingMenuItem localSlidingMenuItem;
    do
    {
      if (!localIterator.hasNext())
        return null;
      localSlidingMenuItem = (SlidingMenuItem)localIterator.next();
    }
    while ((localSlidingMenuItem == null) || (localSlidingMenuItem.id != paramInt));
    return localSlidingMenuItem;
  }

  final int getCount()
  {
    if (this.items == null)
      return 0;
    return this.items.size();
  }

  final SlidingMenuItem getItem(int paramInt)
  {
    return (SlidingMenuItem)this.items.get(paramInt);
  }

  final void setItem(SlidingMenuItem paramSlidingMenuItem)
  {
    if (paramSlidingMenuItem == null)
      return;
    SlidingMenuItem localSlidingMenuItem = findItemById(paramSlidingMenuItem.id);
    paramSlidingMenuItem.group = this.id;
    if (localSlidingMenuItem == null)
    {
      this.items.add(paramSlidingMenuItem);
      return;
    }
    int i = this.items.indexOf(localSlidingMenuItem);
    this.items.remove(i);
    this.items.add(i, paramSlidingMenuItem);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.slidingmenu.SlidingMenuGroup
 * JD-Core Version:    0.6.0
 */