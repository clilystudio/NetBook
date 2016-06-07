package m.framework.ui.widget.slidingmenu;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class MenuAdapter
{
  private ArrayList<SlidingMenuGroup> menus = new ArrayList();

  public MenuAdapter(SlidingMenu paramSlidingMenu)
  {
  }

  private SlidingMenuGroup findGroupById(int paramInt)
  {
    if (this.menus == null)
      return null;
    Iterator localIterator = this.menus.iterator();
    SlidingMenuGroup localSlidingMenuGroup;
    do
    {
      if (!localIterator.hasNext())
        return null;
      localSlidingMenuGroup = (SlidingMenuGroup)localIterator.next();
    }
    while ((localSlidingMenuGroup == null) || (localSlidingMenuGroup.id != paramInt));
    return localSlidingMenuGroup;
  }

  SlidingMenuGroup getGroup(int paramInt)
  {
    return (SlidingMenuGroup)this.menus.get(paramInt);
  }

  int getGroupCount()
  {
    if (this.menus == null)
      return 0;
    return this.menus.size();
  }

  public abstract View getGroupView(int paramInt, ViewGroup paramViewGroup);

  protected SlidingMenuItem getItem(int paramInt1, int paramInt2)
  {
    return ((SlidingMenuGroup)this.menus.get(paramInt1)).getItem(paramInt2);
  }

  public abstract View getItemView(SlidingMenuItem paramSlidingMenuItem, ViewGroup paramViewGroup);

  public SlidingMenuItem getMenuItem(int paramInt1, int paramInt2)
  {
    SlidingMenuGroup localSlidingMenuGroup = findGroupById(paramInt1);
    if (localSlidingMenuGroup == null)
      return null;
    return localSlidingMenuGroup.findItemById(paramInt2);
  }

  public View getMenuTitle()
  {
    return null;
  }

  protected String getTitle(int paramInt)
  {
    return ((SlidingMenuGroup)this.menus.get(paramInt)).text;
  }

  public void notifyDataSetChanged(SlidingMenuItem paramSlidingMenuItem)
  {
  }

  public boolean onItemTrigger(SlidingMenuItem paramSlidingMenuItem)
  {
    return false;
  }

  public void onMenuSwitch(boolean paramBoolean)
  {
  }

  public void setGroup(int paramInt, String paramString)
  {
    SlidingMenuGroup localSlidingMenuGroup = findGroupById(paramInt);
    if (localSlidingMenuGroup == null)
    {
      localSlidingMenuGroup = new SlidingMenuGroup();
      localSlidingMenuGroup.id = paramInt;
      this.menus.add(localSlidingMenuGroup);
    }
    localSlidingMenuGroup.text = paramString;
  }

  void setGroup(SlidingMenuGroup paramSlidingMenuGroup)
  {
    if (paramSlidingMenuGroup == null)
      return;
    SlidingMenuGroup localSlidingMenuGroup = findGroupById(paramSlidingMenuGroup.id);
    if (localSlidingMenuGroup == null)
    {
      this.menus.add(paramSlidingMenuGroup);
      return;
    }
    int i = this.menus.indexOf(localSlidingMenuGroup);
    this.menus.remove(i);
    this.menus.add(i, paramSlidingMenuGroup);
  }

  public void setItem(int paramInt, SlidingMenuItem paramSlidingMenuItem)
  {
    if (paramSlidingMenuItem == null);
    SlidingMenuGroup localSlidingMenuGroup;
    do
    {
      return;
      localSlidingMenuGroup = findGroupById(paramInt);
    }
    while (localSlidingMenuGroup == null);
    localSlidingMenuGroup.setItem(paramSlidingMenuItem);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.slidingmenu.MenuAdapter
 * JD-Core Version:    0.6.0
 */