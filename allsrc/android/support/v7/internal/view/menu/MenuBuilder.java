package android.support.v7.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.R.bool;
import android.util.SparseArray;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class MenuBuilder
  implements SupportMenu
{
  private static final int[] d = { 1, 4, 5, 3, 2, 0 };
  CharSequence a;
  Drawable b;
  View c;
  private final Context e;
  private final Resources f;
  private boolean g;
  private boolean h;
  private h i;
  private ArrayList<MenuItemImpl> j;
  private ArrayList<MenuItemImpl> k;
  private boolean l;
  private ArrayList<MenuItemImpl> m;
  private ArrayList<MenuItemImpl> n;
  private boolean o;
  private int p = 0;
  private boolean q = false;
  private boolean r = false;
  private boolean s = false;
  private boolean t = false;
  private ArrayList<MenuItemImpl> u = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<u>> v = new CopyOnWriteArrayList();
  private MenuItemImpl w;
  private boolean x;

  public MenuBuilder(Context paramContext)
  {
    this.e = paramContext;
    this.f = paramContext.getResources();
    this.j = new ArrayList();
    this.k = new ArrayList();
    this.l = i1;
    this.m = new ArrayList();
    this.n = new ArrayList();
    this.o = i1;
    if ((this.f.getConfiguration().keyboard != i1) && (this.f.getBoolean(R.bool.abc_config_showMenuShortcutsWhenKeyboardPresent)));
    while (true)
    {
      this.h = i1;
      return;
      i1 = 0;
    }
  }

  private static int a(ArrayList<MenuItemImpl> paramArrayList, int paramInt)
  {
    for (int i1 = -1 + paramArrayList.size(); i1 >= 0; i1--)
      if (((MenuItemImpl)paramArrayList.get(i1)).b() <= paramInt)
        return i1 + 1;
    return 0;
  }

  private MenuItemImpl a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = this.u;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    MenuItemImpl localMenuItemImpl;
    if (localArrayList.isEmpty())
      localMenuItemImpl = null;
    label181: 
    while (true)
    {
      return localMenuItemImpl;
      int i1 = paramKeyEvent.getMetaState();
      KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
      paramKeyEvent.getKeyData(localKeyData);
      int i2 = localArrayList.size();
      if (i2 == 1)
        return (MenuItemImpl)localArrayList.get(0);
      boolean bool = b();
      int i3 = 0;
      if (i3 >= i2)
        break;
      localMenuItemImpl = (MenuItemImpl)localArrayList.get(i3);
      if (bool);
      for (int i4 = localMenuItemImpl.getAlphabeticShortcut(); ; i4 = localMenuItemImpl.getNumericShortcut())
      {
        if (((i4 == localKeyData.meta[0]) && ((i1 & 0x2) == 0)) || ((i4 == localKeyData.meta[2]) && ((i1 & 0x2) != 0)) || ((bool) && (i4 == 8) && (paramInt == 67)))
          break label181;
        i3++;
        break;
      }
    }
    return null;
  }

  private MenuItem a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i1 = paramInt3 >> 16;
    if ((i1 < 0) || (i1 >= 6))
      throw new IllegalArgumentException("order does not contain a valid category.");
    int i2 = d[i1] << 16 | 0xFFFF & paramInt3;
    MenuItemImpl localMenuItemImpl = new MenuItemImpl(this, paramInt1, paramInt2, paramInt3, i2, paramCharSequence, this.p);
    this.j.add(a(this.j, i2), localMenuItemImpl);
    b(true);
    return localMenuItemImpl;
  }

  private void a(int paramInt1, CharSequence paramCharSequence, int paramInt2, Drawable paramDrawable, View paramView)
  {
    if (paramView != null)
    {
      this.c = paramView;
      this.a = null;
      this.b = null;
    }
    while (true)
    {
      b(false);
      return;
      if (paramCharSequence != null)
        this.a = paramCharSequence;
      if (paramDrawable != null)
        this.b = paramDrawable;
      this.c = null;
    }
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= this.j.size()));
    do
    {
      return;
      this.j.remove(paramInt);
    }
    while (!paramBoolean);
    b(true);
  }

  private void a(List<MenuItemImpl> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = b();
    int i1 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67))
      return;
    int i2 = this.j.size();
    int i3 = 0;
    label49: MenuItemImpl localMenuItemImpl;
    if (i3 < i2)
    {
      localMenuItemImpl = (MenuItemImpl)this.j.get(i3);
      if (localMenuItemImpl.hasSubMenu())
        ((MenuBuilder)localMenuItemImpl.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      if (!bool)
        break label181;
    }
    label181: for (int i4 = localMenuItemImpl.getAlphabeticShortcut(); ; i4 = localMenuItemImpl.getNumericShortcut())
    {
      if (((i1 & 0x5) == 0) && (i4 != 0) && ((i4 == localKeyData.meta[0]) || (i4 == localKeyData.meta[2]) || ((bool) && (i4 == 8) && (paramInt == 67))) && (localMenuItemImpl.isEnabled()))
        paramList.add(localMenuItemImpl);
      i3++;
      break label49;
      break;
    }
  }

  public final MenuBuilder a(int paramInt)
  {
    this.p = 1;
    return this;
  }

  protected final MenuBuilder a(Drawable paramDrawable)
  {
    a(0, null, 0, paramDrawable, null);
    return this;
  }

  protected final MenuBuilder a(View paramView)
  {
    a(0, null, 0, null, paramView);
    return this;
  }

  protected final MenuBuilder a(CharSequence paramCharSequence)
  {
    a(0, paramCharSequence, 0, null, null);
    return this;
  }

  protected String a()
  {
    return "android:menu:actionviewstates";
  }

  public final void a(Bundle paramBundle)
  {
    if (!this.v.isEmpty())
    {
      SparseArray localSparseArray = new SparseArray();
      Iterator localIterator = this.v.iterator();
      while (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        u localu = (u)localWeakReference.get();
        if (localu == null)
        {
          this.v.remove(localWeakReference);
          continue;
        }
        int i1 = localu.b();
        if (i1 <= 0)
          continue;
        Parcelable localParcelable = localu.c();
        if (localParcelable == null)
          continue;
        localSparseArray.put(i1, localParcelable);
      }
      paramBundle.putSparseParcelableArray("android:menu:presenters", localSparseArray);
    }
  }

  public void a(h paramh)
  {
    this.i = paramh;
  }

  public final void a(u paramu)
  {
    a(paramu, this.e);
  }

  public final void a(u paramu, Context paramContext)
  {
    this.v.add(new WeakReference(paramu));
    paramu.a(paramContext, this);
    this.o = true;
  }

  final void a(MenuItem paramMenuItem)
  {
    int i1 = paramMenuItem.getGroupId();
    int i2 = this.j.size();
    int i3 = 0;
    if (i3 < i2)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)this.j.get(i3);
      if ((localMenuItemImpl.getGroupId() == i1) && (localMenuItemImpl.e()) && (localMenuItemImpl.isCheckable()))
        if (localMenuItemImpl != paramMenuItem)
          break label85;
      label85: for (boolean bool = true; ; bool = false)
      {
        localMenuItemImpl.b(bool);
        i3++;
        break;
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.t)
      return;
    this.t = true;
    Iterator localIterator = this.v.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      u localu = (u)localWeakReference.get();
      if (localu == null)
      {
        this.v.remove(localWeakReference);
        continue;
      }
      localu.a(this, paramBoolean);
    }
    this.t = false;
  }

  boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return (this.i != null) && (this.i.a(paramMenuBuilder, paramMenuItem));
  }

  public boolean a(MenuItemImpl paramMenuItemImpl)
  {
    boolean bool1 = this.v.isEmpty();
    boolean bool2 = false;
    if (bool1);
    do
    {
      return bool2;
      f();
      Iterator localIterator = this.v.iterator();
      boolean bool3 = false;
      while (true)
        if (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          u localu = (u)localWeakReference.get();
          if (localu == null)
          {
            this.v.remove(localWeakReference);
            continue;
          }
          bool2 = localu.a(paramMenuItemImpl);
          if (bool2)
            break;
          bool3 = bool2;
          continue;
        }
        else
        {
          bool2 = bool3;
        }
      g();
    }
    while (!bool2);
    this.w = paramMenuItemImpl;
    return bool2;
  }

  public final boolean a(MenuItem paramMenuItem, int paramInt)
  {
    return a(paramMenuItem, null, paramInt);
  }

  public final boolean a(MenuItem paramMenuItem, u paramu, int paramInt)
  {
    MenuItemImpl localMenuItemImpl = (MenuItemImpl)paramMenuItem;
    boolean bool1;
    if ((localMenuItemImpl == null) || (!localMenuItemImpl.isEnabled()))
      bool1 = false;
    boolean bool2;
    label92: SubMenuBuilder localSubMenuBuilder;
    boolean bool4;
    while (true)
    {
      return bool1;
      bool2 = localMenuItemImpl.a();
      ActionProvider localActionProvider = localMenuItemImpl.getSupportActionProvider();
      if ((localActionProvider != null) && (localActionProvider.hasSubMenu()));
      for (int i1 = 1; ; i1 = 0)
      {
        if (!localMenuItemImpl.l())
          break label92;
        bool1 = bool2 | localMenuItemImpl.expandActionView();
        if (!bool1)
          break;
        a(true);
        return bool1;
      }
      if ((!localMenuItemImpl.hasSubMenu()) && (i1 == 0))
        break label306;
      a(false);
      if (!localMenuItemImpl.hasSubMenu())
        localMenuItemImpl.a(new SubMenuBuilder(this.e, this, localMenuItemImpl));
      localSubMenuBuilder = (SubMenuBuilder)localMenuItemImpl.getSubMenu();
      if (i1 != 0)
        localActionProvider.onPrepareSubMenu(localSubMenuBuilder);
      boolean bool3 = this.v.isEmpty();
      bool4 = false;
      if (!bool3)
        break;
      bool1 = bool2 | bool4;
      if (bool1)
        continue;
      a(true);
      return bool1;
    }
    boolean bool5 = false;
    if (paramu != null)
      bool5 = paramu.a(localSubMenuBuilder);
    Iterator localIterator = this.v.iterator();
    boolean bool6 = bool5;
    label226: u localu;
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      localu = (u)localWeakReference.get();
      if (localu == null)
      {
        this.v.remove(localWeakReference);
        continue;
      }
      if (bool6)
        break label320;
    }
    label306: label320: for (boolean bool7 = localu.a(localSubMenuBuilder); ; bool7 = bool6)
    {
      bool6 = bool7;
      break label226;
      bool4 = bool6;
      break;
      if ((paramInt & 0x1) == 0)
        a(true);
      return bool2;
    }
  }

  public MenuItem add(int paramInt)
  {
    return a(0, 0, 0, this.f.getString(paramInt));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt1, paramInt2, paramInt3, this.f.getString(paramInt4));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }

  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(0, 0, 0, paramCharSequence);
  }

  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = this.e.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i1;
    int i2;
    label52: ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i1 = localList.size();
      if ((paramInt4 & 0x1) == 0)
        removeGroup(paramInt1);
      i2 = 0;
      if (i2 >= i1)
        break label211;
      localResolveInfo = (ResolveInfo)localList.get(i2);
      if (localResolveInfo.specificIndex >= 0)
        break label198;
    }
    label198: for (Intent localIntent1 = paramIntent; ; localIntent1 = paramArrayOfIntent[localResolveInfo.specificIndex])
    {
      Intent localIntent2 = new Intent(localIntent1);
      localIntent2.setComponent(new ComponentName(localResolveInfo.activityInfo.applicationInfo.packageName, localResolveInfo.activityInfo.name));
      MenuItem localMenuItem = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(localIntent2);
      if ((paramArrayOfMenuItem != null) && (localResolveInfo.specificIndex >= 0))
        paramArrayOfMenuItem[localResolveInfo.specificIndex] = localMenuItem;
      i2++;
      break label52;
      i1 = 0;
      break;
    }
    label211: return i1;
  }

  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, this.f.getString(paramInt));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, this.f.getString(paramInt4));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    MenuItemImpl localMenuItemImpl = (MenuItemImpl)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    SubMenuBuilder localSubMenuBuilder = new SubMenuBuilder(this.e, this, localMenuItemImpl);
    localMenuItemImpl.a(localSubMenuBuilder);
    return localSubMenuBuilder;
  }

  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }

  public final void b(Bundle paramBundle)
  {
    SparseArray localSparseArray = paramBundle.getSparseParcelableArray("android:menu:presenters");
    if ((localSparseArray == null) || (this.v.isEmpty()));
    while (true)
    {
      return;
      Iterator localIterator = this.v.iterator();
      while (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        u localu = (u)localWeakReference.get();
        if (localu == null)
        {
          this.v.remove(localWeakReference);
          continue;
        }
        int i1 = localu.b();
        if (i1 <= 0)
          continue;
        Parcelable localParcelable = (Parcelable)localSparseArray.get(i1);
        if (localParcelable == null)
          continue;
        localu.a(localParcelable);
      }
    }
  }

  public final void b(u paramu)
  {
    Iterator localIterator = this.v.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      u localu = (u)localWeakReference.get();
      if ((localu != null) && (localu != paramu))
        continue;
      this.v.remove(localWeakReference);
    }
  }

  public final void b(boolean paramBoolean)
  {
    if (!this.q)
    {
      if (paramBoolean)
      {
        this.l = true;
        this.o = true;
      }
      if (!this.v.isEmpty())
      {
        f();
        Iterator localIterator = this.v.iterator();
        while (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          u localu = (u)localWeakReference.get();
          if (localu == null)
          {
            this.v.remove(localWeakReference);
            continue;
          }
          localu.a(paramBoolean);
        }
        g();
      }
      return;
    }
    this.r = true;
  }

  boolean b()
  {
    return this.g;
  }

  public boolean b(MenuItemImpl paramMenuItemImpl)
  {
    boolean bool1 = this.v.isEmpty();
    boolean bool2 = false;
    if (!bool1)
    {
      MenuItemImpl localMenuItemImpl = this.w;
      bool2 = false;
      if (localMenuItemImpl == paramMenuItemImpl)
        break label30;
    }
    label30: 
    do
    {
      return bool2;
      f();
      Iterator localIterator = this.v.iterator();
      boolean bool3 = false;
      while (true)
        if (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          u localu = (u)localWeakReference.get();
          if (localu == null)
          {
            this.v.remove(localWeakReference);
            continue;
          }
          bool2 = localu.b(paramMenuItemImpl);
          if (bool2)
            break;
          bool3 = bool2;
          continue;
        }
        else
        {
          bool2 = bool3;
        }
      g();
    }
    while (!bool2);
    this.w = null;
    return bool2;
  }

  public final void c(Bundle paramBundle)
  {
    int i1 = size();
    int i2 = 0;
    Object localObject2;
    for (Object localObject1 = null; i2 < i1; localObject1 = localObject2)
    {
      MenuItem localMenuItem = getItem(i2);
      View localView = MenuItemCompat.getActionView(localMenuItem);
      if ((localView != null) && (localView.getId() != -1))
      {
        if (localObject1 == null)
          localObject1 = new SparseArray();
        localView.saveHierarchyState((SparseArray)localObject1);
        if (MenuItemCompat.isActionViewExpanded(localMenuItem))
          paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
      }
      localObject2 = localObject1;
      if (localMenuItem.hasSubMenu())
        ((SubMenuBuilder)localMenuItem.getSubMenu()).c(paramBundle);
      i2++;
    }
    if (localObject1 != null)
      paramBundle.putSparseParcelableArray(a(), (SparseArray)localObject1);
  }

  public final void c(boolean paramBoolean)
  {
    this.x = paramBoolean;
  }

  public boolean c()
  {
    return this.h;
  }

  public void clear()
  {
    if (this.w != null)
      b(this.w);
    this.j.clear();
    b(true);
  }

  public void clearHeader()
  {
    this.b = null;
    this.a = null;
    this.c = null;
    b(false);
  }

  public void close()
  {
    a(true);
  }

  public final Context d()
  {
    return this.e;
  }

  public final void d(Bundle paramBundle)
  {
    if (paramBundle == null);
    MenuItem localMenuItem1;
    do
    {
      int i3;
      do
      {
        return;
        SparseArray localSparseArray = paramBundle.getSparseParcelableArray(a());
        int i1 = size();
        for (int i2 = 0; i2 < i1; i2++)
        {
          MenuItem localMenuItem2 = getItem(i2);
          View localView = MenuItemCompat.getActionView(localMenuItem2);
          if ((localView != null) && (localView.getId() != -1))
            localView.restoreHierarchyState(localSparseArray);
          if (!localMenuItem2.hasSubMenu())
            continue;
          ((SubMenuBuilder)localMenuItem2.getSubMenu()).d(paramBundle);
        }
        i3 = paramBundle.getInt("android:menu:expandedactionview");
      }
      while (i3 <= 0);
      localMenuItem1 = findItem(i3);
    }
    while (localMenuItem1 == null);
    MenuItemCompat.expandActionView(localMenuItem1);
  }

  public final void e()
  {
    if (this.i != null)
      this.i.a(this);
  }

  public final void f()
  {
    if (!this.q)
    {
      this.q = true;
      this.r = false;
    }
  }

  public MenuItem findItem(int paramInt)
  {
    int i1 = size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      Object localObject = (MenuItemImpl)this.j.get(i2);
      if (((MenuItemImpl)localObject).getItemId() == paramInt);
      do
      {
        return localObject;
        if (!((MenuItemImpl)localObject).hasSubMenu())
          break;
        localObject = ((MenuItemImpl)localObject).getSubMenu().findItem(paramInt);
      }
      while (localObject != null);
    }
    return (MenuItem)null;
  }

  public final void g()
  {
    this.q = false;
    if (this.r)
    {
      this.r = false;
      b(true);
    }
  }

  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)this.j.get(paramInt);
  }

  final void h()
  {
    this.l = true;
    b(true);
  }

  public boolean hasVisibleItems()
  {
    if (this.x)
      return true;
    int i1 = size();
    for (int i2 = 0; i2 < i1; i2++)
      if (((MenuItemImpl)this.j.get(i2)).isVisible())
        return true;
    return false;
  }

  final void i()
  {
    this.o = true;
    b(true);
  }

  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }

  public final ArrayList<MenuItemImpl> j()
  {
    if (!this.l)
      return this.k;
    this.k.clear();
    int i1 = this.j.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)this.j.get(i2);
      if (!localMenuItemImpl.isVisible())
        continue;
      this.k.add(localMenuItemImpl);
    }
    this.l = false;
    this.o = true;
    return this.k;
  }

  public final void k()
  {
    ArrayList localArrayList = j();
    if (!this.o)
      return;
    Iterator localIterator = this.v.iterator();
    boolean bool = false;
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      u localu = (u)localWeakReference.get();
      if (localu == null)
      {
        this.v.remove(localWeakReference);
        continue;
      }
      bool |= localu.a();
    }
    if (bool)
    {
      this.m.clear();
      this.n.clear();
      int i1 = localArrayList.size();
      int i2 = 0;
      if (i2 < i1)
      {
        MenuItemImpl localMenuItemImpl = (MenuItemImpl)localArrayList.get(i2);
        if (localMenuItemImpl.h())
          this.m.add(localMenuItemImpl);
        while (true)
        {
          i2++;
          break;
          this.n.add(localMenuItemImpl);
        }
      }
    }
    else
    {
      this.m.clear();
      this.n.clear();
      this.n.addAll(j());
    }
    this.o = false;
  }

  public final ArrayList<MenuItemImpl> l()
  {
    k();
    return this.m;
  }

  public final ArrayList<MenuItemImpl> m()
  {
    k();
    return this.n;
  }

  public MenuBuilder n()
  {
    return this;
  }

  public final MenuItemImpl o()
  {
    return this.w;
  }

  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return a(findItem(paramInt1), null, paramInt2);
  }

  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    MenuItemImpl localMenuItemImpl = a(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (localMenuItemImpl != null)
      bool = a(localMenuItemImpl, null, paramInt2);
    if ((paramInt2 & 0x2) != 0)
      a(true);
    return bool;
  }

  public void removeGroup(int paramInt)
  {
    int i1 = size();
    int i2 = 0;
    if (i2 < i1)
      if (((MenuItemImpl)this.j.get(i2)).getGroupId() != paramInt);
    for (int i3 = i2; ; i3 = -1)
    {
      if (i3 < 0)
        return;
      int i4 = this.j.size() - i3;
      int i6;
      for (int i5 = 0; ; i5 = i6)
      {
        i6 = i5 + 1;
        if ((i5 >= i4) || (((MenuItemImpl)this.j.get(i3)).getGroupId() != paramInt))
          break;
        a(i3, false);
      }
      i2++;
      break;
    }
    b(true);
  }

  public void removeItem(int paramInt)
  {
    int i1 = size();
    int i2 = 0;
    if (i2 < i1)
      if (((MenuItemImpl)this.j.get(i2)).getItemId() != paramInt);
    for (int i3 = i2; ; i3 = -1)
    {
      a(i3, true);
      return;
      i2++;
      break;
    }
  }

  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i1 = this.j.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)this.j.get(i2);
      if (localMenuItemImpl.getGroupId() != paramInt)
        continue;
      localMenuItemImpl.a(paramBoolean2);
      localMenuItemImpl.setCheckable(paramBoolean1);
    }
  }

  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i1 = this.j.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)this.j.get(i2);
      if (localMenuItemImpl.getGroupId() != paramInt)
        continue;
      localMenuItemImpl.setEnabled(paramBoolean);
    }
  }

  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i1 = this.j.size();
    int i2 = 0;
    int i3 = 0;
    if (i2 < i1)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)this.j.get(i2);
      if ((localMenuItemImpl.getGroupId() != paramInt) || (!localMenuItemImpl.c(paramBoolean)))
        break label76;
    }
    label76: for (int i4 = 1; ; i4 = i3)
    {
      i2++;
      i3 = i4;
      break;
      if (i3 != 0)
        b(true);
      return;
    }
  }

  public void setQwertyMode(boolean paramBoolean)
  {
    this.g = paramBoolean;
    b(false);
  }

  public int size()
  {
    return this.j.size();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.MenuBuilder
 * JD-Core Version:    0.6.0
 */