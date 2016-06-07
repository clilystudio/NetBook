package com.cocosw.bottomsheet;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

public final class a extends Dialog
  implements DialogInterface
{
  private GridView a;
  private ArrayList<h> b;
  private BaseAdapter c;
  private g d;
  private boolean e;
  private String f;
  private boolean g;
  private float h;

  // ERROR //
  public a(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iload_2
    //   3: invokespecial 28	android/app/Dialog:<init>	(Landroid/content/Context;I)V
    //   6: getstatic 34	android/os/Build$VERSION:SDK_INT	I
    //   9: bipush 19
    //   11: if_icmplt +259 -> 270
    //   14: aload_1
    //   15: ldc 36
    //   17: invokevirtual 42	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   20: checkcast 44	android/view/WindowManager
    //   23: astore_3
    //   24: aload_1
    //   25: invokevirtual 48	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   28: invokevirtual 54	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   31: getfield 59	android/content/res/Configuration:orientation	I
    //   34: istore 4
    //   36: iconst_0
    //   37: istore 5
    //   39: iload 4
    //   41: iconst_1
    //   42: if_icmpne +6 -> 48
    //   45: iconst_1
    //   46: istore 5
    //   48: aload_0
    //   49: iload 5
    //   51: putfield 61	com/cocosw/bottomsheet/a:e	Z
    //   54: ldc 63
    //   56: invokestatic 69	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   59: ldc 71
    //   61: iconst_1
    //   62: anewarray 65	java/lang/Class
    //   65: dup
    //   66: iconst_0
    //   67: ldc 73
    //   69: aastore
    //   70: invokevirtual 77	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   73: astore 12
    //   75: aload 12
    //   77: iconst_1
    //   78: invokevirtual 83	java/lang/reflect/Method:setAccessible	(Z)V
    //   81: aload_0
    //   82: aload 12
    //   84: aconst_null
    //   85: iconst_1
    //   86: anewarray 85	java/lang/Object
    //   89: dup
    //   90: iconst_0
    //   91: ldc 87
    //   93: aastore
    //   94: invokevirtual 91	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   97: checkcast 73	java/lang/String
    //   100: putfield 93	com/cocosw/bottomsheet/a:f	Ljava/lang/String;
    //   103: aload_1
    //   104: iconst_2
    //   105: newarray int
    //   107: dup
    //   108: iconst_0
    //   109: ldc 94
    //   111: iastore
    //   112: dup
    //   113: iconst_1
    //   114: ldc 95
    //   116: iastore
    //   117: invokevirtual 99	android/content/Context:obtainStyledAttributes	([I)Landroid/content/res/TypedArray;
    //   120: astore 7
    //   122: aload_0
    //   123: aload 7
    //   125: iconst_1
    //   126: iconst_0
    //   127: invokevirtual 105	android/content/res/TypedArray:getBoolean	(IZ)Z
    //   130: putfield 107	com/cocosw/bottomsheet/a:g	Z
    //   133: aload 7
    //   135: invokevirtual 111	android/content/res/TypedArray:recycle	()V
    //   138: ldc 112
    //   140: aload_1
    //   141: checkcast 114	android/app/Activity
    //   144: invokevirtual 118	android/app/Activity:getWindow	()Landroid/view/Window;
    //   147: invokevirtual 124	android/view/Window:getAttributes	()Landroid/view/WindowManager$LayoutParams;
    //   150: getfield 129	android/view/WindowManager$LayoutParams:flags	I
    //   153: iand
    //   154: ifeq +8 -> 162
    //   157: aload_0
    //   158: iconst_1
    //   159: putfield 107	com/cocosw/bottomsheet/a:g	Z
    //   162: new 131	android/util/DisplayMetrics
    //   165: dup
    //   166: invokespecial 133	android/util/DisplayMetrics:<init>	()V
    //   169: astore 9
    //   171: getstatic 34	android/os/Build$VERSION:SDK_INT	I
    //   174: bipush 16
    //   176: if_icmplt +115 -> 291
    //   179: aload_3
    //   180: invokeinterface 137 1 0
    //   185: aload 9
    //   187: invokevirtual 143	android/view/Display:getRealMetrics	(Landroid/util/DisplayMetrics;)V
    //   190: aload_0
    //   191: aload 9
    //   193: getfield 146	android/util/DisplayMetrics:widthPixels	I
    //   196: i2f
    //   197: aload 9
    //   199: getfield 149	android/util/DisplayMetrics:density	F
    //   202: fdiv
    //   203: aload 9
    //   205: getfield 152	android/util/DisplayMetrics:heightPixels	I
    //   208: i2f
    //   209: aload 9
    //   211: getfield 149	android/util/DisplayMetrics:density	F
    //   214: fdiv
    //   215: invokestatic 158	java/lang/Math:min	(FF)F
    //   218: putfield 160	com/cocosw/bottomsheet/a:h	F
    //   221: aload_0
    //   222: getfield 107	com/cocosw/bottomsheet/a:g	Z
    //   225: ifeq +45 -> 270
    //   228: aload_0
    //   229: invokevirtual 161	com/cocosw/bottomsheet/a:getWindow	()Landroid/view/Window;
    //   232: astore 10
    //   234: aload 10
    //   236: invokevirtual 124	android/view/Window:getAttributes	()Landroid/view/WindowManager$LayoutParams;
    //   239: astore 11
    //   241: aload 11
    //   243: ldc 162
    //   245: aload 11
    //   247: getfield 129	android/view/WindowManager$LayoutParams:flags	I
    //   250: ior
    //   251: putfield 129	android/view/WindowManager$LayoutParams:flags	I
    //   254: aload 10
    //   256: aload 11
    //   258: invokevirtual 166	android/view/Window:setAttributes	(Landroid/view/WindowManager$LayoutParams;)V
    //   261: aload 10
    //   263: ldc 112
    //   265: ldc 112
    //   267: invokevirtual 170	android/view/Window:setFlags	(II)V
    //   270: return
    //   271: astore 6
    //   273: aload_0
    //   274: aconst_null
    //   275: putfield 93	com/cocosw/bottomsheet/a:f	Ljava/lang/String;
    //   278: goto -175 -> 103
    //   281: astore 8
    //   283: aload 7
    //   285: invokevirtual 111	android/content/res/TypedArray:recycle	()V
    //   288: aload 8
    //   290: athrow
    //   291: aload_3
    //   292: invokeinterface 137 1 0
    //   297: aload 9
    //   299: invokevirtual 173	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   302: goto -112 -> 190
    //
    // Exception table:
    //   from	to	target	type
    //   54	103	271	java/lang/Throwable
    //   122	133	281	finally
  }

  protected final void onCreate(Bundle paramBundle)
  {
    boolean bool1 = true;
    super.onCreate(paramBundle);
    Context localContext1 = getContext();
    setCanceledOnTouchOutside(bool1);
    View localView1 = View.inflate(localContext1, R.layout.bottom_sheet_dialog, null);
    setContentView(localView1);
    setOnShowListener(new b(this));
    Context localContext2;
    boolean bool2;
    String str;
    int i;
    if ((Build.VERSION.SDK_INT >= 19) && (this.g))
    {
      localContext2 = getContext();
      Resources localResources1 = localContext2.getResources();
      if (Build.VERSION.SDK_INT < 14)
        break label443;
      Resources localResources2 = localContext2.getResources();
      int j = localResources2.getIdentifier("config_showNavigationBar", "bool", "android");
      if (j == 0)
        break label385;
      bool2 = localResources2.getBoolean(j);
      if (!"1".equals(this.f))
        break label366;
      bool2 = false;
      if (!bool2)
        break label443;
      if (!this.e)
        break label408;
      str = "navigation_bar_height";
      int k = localResources1.getIdentifier(str, "dimen", "android");
      if (k <= 0)
        break label568;
      i = localResources1.getDimensionPixelSize(k);
    }
    while (true)
    {
      label173: localView1.setPadding(0, 0, 0, i + localView1.getPaddingBottom());
      TextView localTextView = (TextView)localView1.findViewById(R.id.bottom_sheet_title);
      this.a = ((GridView)localView1.findViewById(R.id.bottom_sheet_gridview));
      ViewGroup localViewGroup = (ViewGroup)localView1.findViewById(R.id.bottom_sheet_customview);
      View localView2 = localView1.findViewById(R.id.bottom_sheet_divider);
      if (!g.a(this.d))
      {
        this.a.setVisibility(8);
        localViewGroup.setVisibility(0);
        localViewGroup.addView(g.b(this.d));
        localView2.setVisibility(8);
        localTextView.setVisibility(8);
      }
      this.b = g.c(this.d);
      if (g.a(this.d))
      {
        Iterator localIterator = this.b.iterator();
        h localh;
        label366: 
        do
          while (true)
          {
            if (!localIterator.hasNext())
              break label468;
            localh = (h)localIterator.next();
            if (localh.a)
            {
              localIterator.remove();
              continue;
              if (!"0".equals(this.f))
                break;
              bool2 = bool1;
              break;
              if (!ViewConfiguration.get(localContext2).hasPermanentMenuKey())
              {
                bool2 = bool1;
                break;
              }
              bool2 = false;
              break;
              if ((this.h >= 600.0F) || (this.e));
              while (true)
              {
                if (!bool1)
                  break label443;
                str = "navigation_bar_height_landscape";
                break;
                bool1 = false;
              }
              i = 0;
              break label173;
            }
          }
        while (h.a(localh) != null);
        label385: label408: label443: throw new IllegalArgumentException("You should set icon for each items in grid style");
      }
      label468: this.c = new c(this);
      this.a.setAdapter(this.c);
      this.a.setOnItemClickListener(new e(this));
      this.a.getViewTreeObserver().addOnGlobalLayoutListener(new f(this));
      WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
      localLayoutParams.height = -2;
      localLayoutParams.width = -1;
      localLayoutParams.gravity = 80;
      getWindow().setAttributes(localLayoutParams);
      return;
      label568: i = 0;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.cocosw.bottomsheet.a
 * JD-Core Version:    0.6.0
 */