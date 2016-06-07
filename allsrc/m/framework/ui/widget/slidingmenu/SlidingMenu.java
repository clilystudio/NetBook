package m.framework.ui.widget.slidingmenu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import java.lang.reflect.Method;
import java.util.HashMap;

public class SlidingMenu extends RelativeLayout
{
  private MenuAdapter adapter;
  private MenuConfig config;
  private View curBody;
  private FrameLayout flMenu;
  private HashMap<SlidingMenuItem, View> itemToView;
  private LinearLayout llBody;
  private LinearLayout llMenu;
  private boolean menuShown;
  private int menuWidth;
  private View.OnClickListener ocListener;
  private View.OnTouchListener otListener;
  private int screenWidth;
  private int showMenuWidth;
  private BodyContainer svBody;
  private View vCover;

  public SlidingMenu(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }

  public SlidingMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }

  public SlidingMenu(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }

  private void disableOverScrollMode(View paramView)
  {
    if (Build.VERSION.SDK_INT < 9)
      return;
    try
    {
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = View.class.getMethod("setOverScrollMode", arrayOfClass);
      localMethod.setAccessible(true);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(2);
      localMethod.invoke(paramView, arrayOfObject);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  private View getSepView(Context paramContext)
  {
    View localView = new View(paramContext);
    localView.setBackgroundResource(this.config.menuSep);
    localView.setLayoutParams(new LinearLayout.LayoutParams(-1, 2));
    return localView;
  }

  private void init(Context paramContext)
  {
    this.config = new MenuConfig();
    this.itemToView = new HashMap();
    this.ocListener = new SlidingMenu.1(this);
    this.otListener = new SlidingMenu.2(this);
    this.screenWidth = paramContext.getResources().getDisplayMetrics().widthPixels;
    this.menuWidth = (int)(this.screenWidth * this.config.menuWeight);
    this.showMenuWidth = ((this.screenWidth - this.menuWidth) / 2);
    setBackgroundResource(this.config.menuBackground);
    initMenu(paramContext);
    initBody(paramContext);
    getViewTreeObserver().addOnGlobalLayoutListener(new SlidingMenu.3(this));
  }

  private void initBody(Context paramContext)
  {
    this.svBody = new BodyContainer(this);
    this.svBody.setHorizontalScrollBarEnabled(false);
    this.svBody.setHorizontalFadingEdgeEnabled(false);
    disableOverScrollMode(this.svBody);
    this.svBody.setLayoutParams(new FrameLayout.LayoutParams(this.screenWidth, -1));
    addView(this.svBody);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(this.screenWidth + this.menuWidth, -1));
    this.svBody.addView(localLinearLayout);
    FrameLayout localFrameLayout = new FrameLayout(getContext());
    localFrameLayout.setLayoutParams(new LinearLayout.LayoutParams(this.menuWidth, -1));
    localLinearLayout.addView(localFrameLayout);
    ImageView localImageView = new ImageView(paramContext);
    localImageView.setImageResource(this.config.rightShadow);
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -1);
    localLayoutParams.gravity = 5;
    localImageView.setLayoutParams(localLayoutParams);
    localFrameLayout.addView(localImageView);
    this.llBody = new SlidingMenu.5(this, paramContext);
    this.llBody.setBackgroundResource(this.config.bodyBackground);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(this.screenWidth, -1);
    this.llBody.setLayoutParams(localLayoutParams1);
    localLinearLayout.addView(this.llBody);
  }

  private void initMenu(Context paramContext)
  {
    this.flMenu = new SlidingMenu.4(this, paramContext);
    this.flMenu.setLayoutParams(new FrameLayout.LayoutParams(this.menuWidth, -1));
    addView(this.flMenu);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    this.flMenu.addView(localLinearLayout);
    ScrollView localScrollView = new ScrollView(paramContext);
    localScrollView.setVerticalScrollBarEnabled(false);
    localScrollView.setVerticalFadingEdgeEnabled(false);
    disableOverScrollMode(localScrollView);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.weight = 1.0F;
    localScrollView.setLayoutParams(localLayoutParams);
    localLinearLayout.addView(localScrollView);
    this.llMenu = new LinearLayout(paramContext);
    this.llMenu.setOrientation(1);
    this.llMenu.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    localScrollView.addView(this.llMenu);
    this.vCover = new View(paramContext);
    this.vCover.setBackgroundColor(0);
    this.vCover.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    this.flMenu.addView(this.vCover);
  }

  private void invalidateMenu()
  {
    Context localContext = getContext();
    this.llMenu.removeAllViews();
    int i = this.adapter.getGroupCount();
    int j = 0;
    if (j >= i)
      return;
    View localView1 = this.adapter.getGroupView(j, this.llMenu);
    this.llMenu.addView(localView1);
    int k = this.adapter.getGroup(j).getCount();
    for (int m = 0; ; m++)
    {
      if (m >= k)
      {
        int n = this.llMenu.getChildCount();
        if (n > 0)
          this.llMenu.removeViewAt(n - 1);
        j++;
        break;
      }
      SlidingMenuItem localSlidingMenuItem = this.adapter.getItem(j, m);
      View localView2 = this.adapter.getItemView(localSlidingMenuItem, this.llMenu);
      this.llMenu.addView(localView2);
      this.llMenu.addView(getSepView(localContext));
      this.itemToView.put(localSlidingMenuItem, localView2);
      localView2.setTag(localSlidingMenuItem);
      localView2.setOnClickListener(this.ocListener);
      localView2.setOnTouchListener(this.otListener);
    }
  }

  private void reInit(Context paramContext)
  {
    this.screenWidth = paramContext.getResources().getDisplayMetrics().widthPixels;
    this.menuWidth = (int)(this.screenWidth * this.config.menuWeight);
    this.showMenuWidth = ((this.screenWidth - this.menuWidth) / 2);
    setBackgroundResource(this.config.menuBackground);
    reInitMenu(paramContext);
    reInitBody(paramContext);
  }

  private void reInitBody(Context paramContext)
  {
    ViewGroup.LayoutParams localLayoutParams1 = this.svBody.getLayoutParams();
    localLayoutParams1.width = this.screenWidth;
    this.svBody.setLayoutParams(localLayoutParams1);
    LinearLayout localLinearLayout = (LinearLayout)this.svBody.getChildAt(0);
    ViewGroup.LayoutParams localLayoutParams2 = localLinearLayout.getLayoutParams();
    localLayoutParams2.width = (this.screenWidth + this.menuWidth);
    localLinearLayout.setLayoutParams(localLayoutParams2);
    FrameLayout localFrameLayout = (FrameLayout)localLinearLayout.getChildAt(0);
    ViewGroup.LayoutParams localLayoutParams3 = localFrameLayout.getLayoutParams();
    localLayoutParams3.width = this.menuWidth;
    localFrameLayout.setLayoutParams(localLayoutParams3);
    ViewGroup.LayoutParams localLayoutParams4 = this.llBody.getLayoutParams();
    localLayoutParams4.width = this.screenWidth;
    this.llBody.setLayoutParams(localLayoutParams4);
    this.llBody.setBackgroundResource(this.config.bodyBackground);
    ((ImageView)localFrameLayout.getChildAt(0)).setImageResource(this.config.rightShadow);
    if (!this.menuShown)
      getViewTreeObserver().addOnGlobalLayoutListener(new SlidingMenu.6(this));
  }

  private void reInitMenu(Context paramContext)
  {
    ViewGroup.LayoutParams localLayoutParams1 = this.flMenu.getLayoutParams();
    localLayoutParams1.width = this.menuWidth;
    this.flMenu.setLayoutParams(localLayoutParams1);
    this.llMenu.setPadding(this.config.paddingLeft, this.config.paddingTop, this.config.paddingRight, this.config.paddingBottom);
    if (this.adapter != null)
    {
      View localView = this.adapter.getMenuTitle();
      if (localView != null)
      {
        ViewGroup.LayoutParams localLayoutParams2 = localView.getLayoutParams();
        int i = -2;
        if (localLayoutParams2 != null)
          i = localLayoutParams2.height;
        localView.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        ((LinearLayout)this.flMenu.getChildAt(0)).addView(localView);
      }
    }
  }

  public View getBodyView()
  {
    return this.curBody;
  }

  MenuConfig getMenuConfig()
  {
    return this.config;
  }

  View getMenuCover()
  {
    return this.vCover;
  }

  int getMenuWidth()
  {
    return this.menuWidth;
  }

  int getShowMenuWidth()
  {
    return this.showMenuWidth;
  }

  public void hideMenu()
  {
    this.menuShown = false;
    this.svBody.smoothScrollTo(this.menuWidth, 0);
    if (this.adapter != null)
      this.adapter.onMenuSwitch(this.menuShown);
  }

  public boolean isMenuShown()
  {
    return this.menuShown;
  }

  View itemToView(SlidingMenuItem paramSlidingMenuItem)
  {
    return (View)this.itemToView.get(paramSlidingMenuItem);
  }

  public void refresh()
  {
    if (this.adapter != null)
    {
      reInit(getContext());
      invalidateMenu();
    }
  }

  public void setAdapter(MenuAdapter paramMenuAdapter)
  {
    this.adapter = paramMenuAdapter;
    refresh();
  }

  public void setBodyBackground(int paramInt)
  {
    this.config.bodyBackground = paramInt;
  }

  public void setBodyView(View paramView)
  {
    this.curBody = paramView;
    this.llBody.removeAllViews();
    if (this.curBody != null)
    {
      this.curBody.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      this.llBody.addView(this.curBody);
    }
  }

  public void setMenuBackground(int paramInt)
  {
    this.config.menuBackground = paramInt;
  }

  public void setMenuDivider(int paramInt)
  {
    this.config.menuSep = paramInt;
  }

  public void setMenuItemBackground(int paramInt1, int paramInt2)
  {
    this.config.itemDownBack = paramInt1;
    this.config.itemDownRelease = paramInt2;
  }

  public void setMenuPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.config.paddingLeft = paramInt1;
    this.config.paddingTop = paramInt2;
    this.config.paddingRight = paramInt3;
    this.config.paddingBottom = paramInt4;
  }

  public void setMenuWeight(float paramFloat)
  {
    this.config.menuWeight = paramFloat;
  }

  public void setShadowRes(int paramInt)
  {
    this.config.rightShadow = paramInt;
  }

  public void setTtleHeight(int paramInt)
  {
    this.config.titleHeight = paramInt;
  }

  public void showMenu()
  {
    this.menuShown = true;
    this.svBody.smoothScrollTo(0, 0);
    if (this.adapter != null)
      this.adapter.onMenuSwitch(this.menuShown);
  }

  public void switchMenu()
  {
    if (this.menuShown)
    {
      hideMenu();
      return;
    }
    showMenu();
  }

  public void triggerItem(int paramInt1, int paramInt2)
  {
    if (this.adapter == null);
    SlidingMenuItem localSlidingMenuItem;
    do
    {
      return;
      localSlidingMenuItem = this.adapter.getMenuItem(paramInt1, paramInt2);
    }
    while (localSlidingMenuItem == null);
    this.adapter.onItemTrigger(localSlidingMenuItem);
  }

  public void triggerItem(SlidingMenuItem paramSlidingMenuItem)
  {
    if (this.adapter == null);
    do
      return;
    while (paramSlidingMenuItem == null);
    this.adapter.onItemTrigger(paramSlidingMenuItem);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.slidingmenu.SlidingMenu
 * JD-Core Version:    0.6.0
 */