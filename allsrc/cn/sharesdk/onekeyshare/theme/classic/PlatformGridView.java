package cn.sharesdk.onekeyshare.theme.classic;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build.VERSION;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.onekeyshare.CustomerLogo;
import com.arcsoft.hpay100.a.a;
import com.mob.tools.gui.ViewPagerClassic;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

public class PlatformGridView extends LinearLayout
  implements Handler.Callback, View.OnClickListener
{
  private static final int MIN_CLICK_INTERVAL = 1000;
  private static final int MSG_PLATFORM_LIST_GOT = 1;
  private int COLUMN_PER_LINE;
  private int LINE_PER_PAGE;
  private int PAGE_SIZE;
  private View bgView;
  private Bitmap bluePoint;
  private ArrayList<CustomerLogo> customers;
  private Bitmap grayPoint;
  private HashMap<String, String> hiddenPlatforms;
  private long lastClickTime;
  private ViewPagerClassic pager;
  private PlatformListPage parent;
  private Platform[] platformList;
  private ImageView[] points;
  private HashMap<String, Object> reqData;
  private boolean silent;

  public PlatformGridView(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }

  public PlatformGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }

  private void calPageSize()
  {
    float f = a.l(getContext())[0] / a.l(getContext())[1];
    if (f < 0.63D)
    {
      this.COLUMN_PER_LINE = 3;
      this.LINE_PER_PAGE = 3;
    }
    while (true)
    {
      this.PAGE_SIZE = (this.COLUMN_PER_LINE * this.LINE_PER_PAGE);
      return;
      if (f < 0.75D)
      {
        this.COLUMN_PER_LINE = 3;
        this.LINE_PER_PAGE = 2;
        continue;
      }
      this.LINE_PER_PAGE = 1;
      if (f >= 1.75D)
      {
        this.COLUMN_PER_LINE = 6;
        continue;
      }
      if (f >= 1.5D)
      {
        this.COLUMN_PER_LINE = 5;
        continue;
      }
      if (f >= 1.3D)
      {
        this.COLUMN_PER_LINE = 4;
        continue;
      }
      this.COLUMN_PER_LINE = 3;
    }
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

  private void init(Context paramContext)
  {
    calPageSize();
    setOrientation(1);
    this.pager = new ViewPagerClassic(paramContext);
    disableOverScrollMode(this.pager);
    this.pager.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    addView(this.pager);
    new PlatformGridView.1(this).start();
  }

  public void afterPlatformListGot()
  {
    PlatformGridView.PlatformAdapter localPlatformAdapter = new PlatformGridView.PlatformAdapter(this);
    this.pager.setAdapter(localPlatformAdapter);
    int i3;
    int i4;
    label44: int i5;
    label54: int i;
    if (this.platformList != null)
      if (this.customers == null)
      {
        i3 = 0;
        if (this.platformList != null)
          break label114;
        i4 = 0;
        if (this.hiddenPlatforms != null)
          break label124;
        i5 = 0;
        int i6 = i3 + (i4 - i5);
        i = i6 / this.PAGE_SIZE;
        if (i6 % this.PAGE_SIZE > 0)
          i++;
      }
    while (true)
    {
      this.points = new ImageView[i];
      if (this.points.length <= 0)
      {
        return;
        i3 = this.customers.size();
        break;
        label114: i4 = this.platformList.length;
        break label44;
        label124: i5 = this.hiddenPlatforms.size();
        break label54;
      }
      Context localContext = getContext();
      LinearLayout localLinearLayout = new LinearLayout(localContext);
      if (i > 1);
      for (int j = 0; ; j = 8)
      {
        localLinearLayout.setVisibility(j);
        LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
        localLayoutParams1.gravity = 1;
        localLinearLayout.setLayoutParams(localLayoutParams1);
        addView(localLinearLayout);
        int k = a.a(localContext, 5);
        int m = a.d(getContext(), "light_blue_point");
        if (m > 0)
          this.grayPoint = BitmapFactory.decodeResource(getResources(), m);
        int n = a.d(getContext(), "blue_point");
        if (n > 0)
          this.bluePoint = BitmapFactory.decodeResource(getResources(), n);
        for (int i1 = 0; i1 < i; i1++)
        {
          this.points[i1] = new ImageView(localContext);
          this.points[i1].setScaleType(ImageView.ScaleType.CENTER_INSIDE);
          this.points[i1].setImageBitmap(this.grayPoint);
          LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(k, k);
          localLayoutParams2.setMargins(k, k, k, 0);
          this.points[i1].setLayoutParams(localLayoutParams2);
          localLinearLayout.addView(this.points[i1]);
        }
      }
      int i2 = this.pager.a();
      this.points[i2].setImageBitmap(this.bluePoint);
      return;
      i = 0;
    }
  }

  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return false;
      afterPlatformListGot();
    }
  }

  public void onClick(View paramView)
  {
    long l = System.currentTimeMillis();
    if (l - this.lastClickTime < 1000L)
      return;
    this.lastClickTime = l;
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramView.getTag());
    this.parent.onPlatformIconClick(paramView, localArrayList);
  }

  public void onConfigurationChanged()
  {
    int i = this.pager.a() * this.PAGE_SIZE;
    calPageSize();
    int j = i / this.PAGE_SIZE;
    removeViewAt(1);
    afterPlatformListGot();
    this.pager.setCurrentScreen(j);
  }

  public void setCustomerLogos(ArrayList<CustomerLogo> paramArrayList)
  {
    this.customers = paramArrayList;
  }

  public void setData(HashMap<String, Object> paramHashMap, boolean paramBoolean)
  {
    this.reqData = paramHashMap;
    this.silent = paramBoolean;
  }

  public void setEditPageBackground(View paramView)
  {
    this.bgView = paramView;
  }

  public void setHiddenPlatforms(HashMap<String, String> paramHashMap)
  {
    this.hiddenPlatforms = paramHashMap;
  }

  public void setParent(PlatformListPage paramPlatformListPage)
  {
    this.parent = paramPlatformListPage;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.PlatformGridView
 * JD-Core Version:    0.6.0
 */