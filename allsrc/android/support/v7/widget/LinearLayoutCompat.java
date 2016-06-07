package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.widget.ae;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.handmark.pulltorefresh.library.internal.e;

public class LinearLayoutCompat extends ViewGroup
{
  private boolean a = true;
  private int b = -1;
  private int c = 0;
  private int d;
  private int e = 8388659;
  private int f;
  private float g;
  private boolean h;
  private int[] i;
  private int[] j;
  private Drawable k;
  private int l;
  private int m;
  private int n;
  private int o;

  public LinearLayoutCompat(Context paramContext)
  {
    this(paramContext, null);
  }

  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e locale = e.a(paramContext, paramAttributeSet, R.styleable.LinearLayoutCompat, paramInt, 0);
    int i1 = locale.a(R.styleable.LinearLayoutCompat_android_orientation, -1);
    if (i1 >= 0)
      setOrientation(i1);
    int i2 = locale.a(R.styleable.LinearLayoutCompat_android_gravity, -1);
    if (i2 >= 0)
      setGravity(i2);
    boolean bool = locale.a(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
    if (!bool)
      setBaselineAligned(bool);
    this.g = locale.a(R.styleable.LinearLayoutCompat_android_weightSum, -1.0F);
    this.b = locale.a(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
    this.h = locale.a(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
    setDividerDrawable(locale.a(R.styleable.LinearLayoutCompat_divider));
    this.n = locale.a(R.styleable.LinearLayoutCompat_showDividers, 0);
    this.o = locale.d(R.styleable.LinearLayoutCompat_dividerPadding, 0);
    locale.b();
  }

  private void a(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    for (int i2 = 0; i2 < paramInt1; i2++)
    {
      View localView = getChildAt(i2);
      if (localView.getVisibility() == 8)
        continue;
      G localG = (G)localView.getLayoutParams();
      if (localG.width != -1)
        continue;
      int i3 = localG.height;
      localG.height = localView.getMeasuredHeight();
      measureChildWithMargins(localView, i1, 0, paramInt2, 0);
      localG.height = i3;
    }
  }

  private void a(Canvas paramCanvas, int paramInt)
  {
    this.k.setBounds(getPaddingLeft() + this.o, paramInt, getWidth() - getPaddingRight() - this.o, paramInt + this.m);
    this.k.draw(paramCanvas);
  }

  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  private boolean a(int paramInt)
  {
    if (paramInt == 0)
      if ((0x1 & this.n) == 0);
    while (true)
    {
      return true;
      return false;
      if (paramInt != getChildCount())
        break;
      if ((0x4 & this.n) == 0)
        return false;
    }
    if ((0x2 & this.n) != 0)
      for (int i1 = paramInt - 1; ; i1--)
      {
        if (i1 < 0)
          break label74;
        if (getChildAt(i1).getVisibility() != 8)
          break;
      }
    return false;
    label74: return false;
  }

  private void b(int paramInt1, int paramInt2)
  {
    this.f = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    int i5 = 1;
    float f1 = 0.0F;
    int i6 = getChildCount();
    int i7 = View.MeasureSpec.getMode(paramInt1);
    int i8 = View.MeasureSpec.getMode(paramInt2);
    int i9 = 0;
    int i10 = 0;
    if ((this.i == null) || (this.j == null))
    {
      this.i = new int[4];
      this.j = new int[4];
    }
    int[] arrayOfInt1 = this.i;
    int[] arrayOfInt2 = this.j;
    arrayOfInt1[3] = -1;
    arrayOfInt1[2] = -1;
    arrayOfInt1[1] = -1;
    arrayOfInt1[0] = -1;
    arrayOfInt2[3] = -1;
    arrayOfInt2[2] = -1;
    arrayOfInt2[1] = -1;
    arrayOfInt2[0] = -1;
    boolean bool1 = this.a;
    boolean bool2 = this.h;
    int i11;
    if (i7 == 1073741824)
      i11 = 1;
    int i12;
    int i13;
    View localView6;
    int i63;
    G localG4;
    float f7;
    label304: int i69;
    int i70;
    label333: int i60;
    int i71;
    label355: int i72;
    int i73;
    int i62;
    int i82;
    label426: int i75;
    int i76;
    label498: int i78;
    label517: float f6;
    int i57;
    int i59;
    int i56;
    int i61;
    int i58;
    int i55;
    while (true)
    {
      i12 = -2147483648;
      i13 = 0;
      while (true)
      {
        if (i13 >= i6)
          break label888;
        localView6 = getChildAt(i13);
        if (localView6 == null)
        {
          this.f = this.f;
          i63 = i13;
          i13 = i63 + 1;
          continue;
          i11 = 0;
          break;
        }
      }
      if (localView6.getVisibility() == 8)
        break label2317;
      if (a(i13))
        this.f += this.l;
      localG4 = (G)localView6.getLayoutParams();
      f7 = f1 + localG4.g;
      if ((i7 == 1073741824) && (localG4.width == 0) && (localG4.g > 0.0F))
      {
        if (i11 == 0)
          break;
        this.f += localG4.leftMargin + localG4.rightMargin;
        if (bool1)
        {
          int i85 = View.MeasureSpec.makeMeasureSpec(0, 0);
          localView6.measure(i85, i85);
          i69 = i12;
          i70 = i10;
          if ((i8 == 1073741824) || (localG4.height != -1))
            break label2296;
          i60 = 1;
          i71 = 1;
          i72 = localG4.topMargin + localG4.bottomMargin;
          i73 = i72 + localView6.getMeasuredHeight();
          int i74 = ViewCompat.getMeasuredState(localView6);
          i62 = ae.a(i2, i74);
          if (bool1)
          {
            int i81 = localView6.getBaseline();
            if (i81 != -1)
            {
              if (localG4.h >= 0)
                break label813;
              i82 = this.e;
              int i83 = (0xFFFFFFFE & (i82 & 0x70) >> 4) >> 1;
              arrayOfInt1[i83] = Math.max(arrayOfInt1[i83], i81);
              arrayOfInt2[i83] = Math.max(arrayOfInt2[i83], i73 - i81);
            }
          }
          i75 = Math.max(i1, i73);
          if ((i5 == 0) || (localG4.height != -1))
            break label823;
          i76 = 1;
          if (localG4.g <= 0.0F)
            break label836;
          if (i71 == 0)
            break label829;
          i78 = i72;
          int i79 = Math.max(i4, i78);
          f6 = f7;
          i57 = i76;
          i59 = i3;
          i56 = i70;
          i61 = i75;
          int i80 = i69;
          i58 = i79;
          i55 = i80;
        }
      }
    }
    while (true)
    {
      i10 = i56;
      i5 = i57;
      i4 = i58;
      i3 = i59;
      i2 = i62;
      i1 = i61;
      i9 = i60;
      i12 = i55;
      f1 = f6;
      i63 = i13;
      break;
      int i84 = this.f;
      this.f = Math.max(i84, i84 + localG4.leftMargin + localG4.rightMargin);
      break label304;
      i69 = i12;
      i70 = 1;
      break label333;
      int i64 = -2147483648;
      if ((localG4.width == 0) && (localG4.g > 0.0F))
      {
        i64 = 0;
        localG4.width = -2;
      }
      int i65 = i64;
      int i66;
      label691: int i67;
      if (f7 == 0.0F)
      {
        i66 = this.f;
        a(localView6, paramInt1, i66, paramInt2, 0);
        if (i65 != -2147483648)
          localG4.width = i65;
        i67 = localView6.getMeasuredWidth();
        if (i11 == 0)
          break label778;
        this.f += i67 + localG4.leftMargin + localG4.rightMargin;
      }
      while (true)
      {
        if (!bool2)
          break label2306;
        i69 = Math.max(i67, i12);
        i70 = i10;
        break;
        i66 = 0;
        break label691;
        label778: int i68 = this.f;
        this.f = Math.max(i68, i68 + i67 + localG4.leftMargin + localG4.rightMargin);
      }
      label813: i82 = localG4.h;
      break label426;
      label823: i76 = 0;
      break label498;
      label829: i78 = i73;
      break label517;
      label836: if (i71 != 0);
      while (true)
      {
        int i77 = Math.max(i3, i72);
        f6 = f7;
        i57 = i76;
        i59 = i77;
        i56 = i70;
        i55 = i69;
        i58 = i4;
        i61 = i75;
        break;
        i72 = i73;
      }
      label888: if ((this.f > 0) && (a(i6)))
        this.f += this.l;
      int i14;
      if ((arrayOfInt1[1] != -1) || (arrayOfInt1[0] != -1) || (arrayOfInt1[2] != -1) || (arrayOfInt1[3] != -1))
        i14 = Math.max(arrayOfInt1[3], Math.max(arrayOfInt1[0], Math.max(arrayOfInt1[1], arrayOfInt1[2]))) + Math.max(arrayOfInt2[3], Math.max(arrayOfInt2[0], Math.max(arrayOfInt2[1], arrayOfInt2[2])));
      for (int i15 = Math.max(i1, i14); ; i15 = i1)
      {
        if ((bool2) && ((i7 == -2147483648) || (i7 == 0)))
        {
          this.f = 0;
          int i52 = 0;
          if (i52 < i6)
          {
            View localView5 = getChildAt(i52);
            int i54;
            if (localView5 == null)
            {
              this.f = this.f;
              i54 = i52;
            }
            while (true)
            {
              i52 = i54 + 1;
              break;
              if (localView5.getVisibility() == 8)
              {
                i54 = i52;
                continue;
              }
              G localG3 = (G)localView5.getLayoutParams();
              if (i11 != 0)
              {
                this.f += i12 + localG3.leftMargin + localG3.rightMargin;
                i54 = i52;
                continue;
              }
              int i53 = this.f;
              this.f = Math.max(i53, i53 + i12 + localG3.leftMargin + localG3.rightMargin);
              i54 = i52;
            }
          }
        }
        this.f += getPaddingLeft() + getPaddingRight();
        int i16 = ViewCompat.resolveSizeAndState(Math.max(this.f, getSuggestedMinimumWidth()), paramInt1, 0);
        int i17 = (0xFFFFFF & i16) - this.f;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        View localView2;
        G localG2;
        int i47;
        View localView3;
        label1469: int i35;
        float f4;
        int i34;
        label1507: int i37;
        label1538: label1557: int i39;
        int i41;
        label1598: int i43;
        label1624: int i45;
        label1656: float f2;
        int i30;
        int i32;
        int i31;
        int i33;
        int i29;
        if ((i10 != 0) || ((i17 != 0) && (f1 > 0.0F)))
        {
          if (this.g > 0.0F)
            f1 = this.g;
          arrayOfInt1[3] = -1;
          arrayOfInt1[2] = -1;
          arrayOfInt1[1] = -1;
          arrayOfInt1[0] = -1;
          arrayOfInt2[3] = -1;
          arrayOfInt2[2] = -1;
          arrayOfInt2[1] = -1;
          arrayOfInt2[0] = -1;
          this.f = 0;
          i18 = 0;
          i19 = i5;
          i20 = i3;
          i21 = -1;
          i22 = i2;
          if (i18 < i6)
          {
            localView2 = getChildAt(i18);
            if ((localView2 == null) || (localView2.getVisibility() == 8))
              break label2263;
            localG2 = (G)localView2.getLayoutParams();
            float f3 = localG2.g;
            if (f3 <= 0.0F)
              break label2248;
            i47 = (int)(f3 * i17 / f1);
            float f5 = f1 - f3;
            int i48 = i17 - i47;
            int i49 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + localG2.topMargin + localG2.bottomMargin, localG2.height);
            if ((localG2.width != 0) || (i7 != 1073741824))
            {
              i47 += localView2.getMeasuredWidth();
              if (i47 < 0)
                i47 = 0;
              localView3 = localView2;
              localView3.measure(View.MeasureSpec.makeMeasureSpec(i47, 1073741824), i49);
              i35 = ae.a(i22, 0xFF000000 & ViewCompat.getMeasuredState(localView2));
              f4 = f5;
              i34 = i48;
              if (i11 == 0)
                break label1779;
              this.f += localView2.getMeasuredWidth() + localG2.leftMargin + localG2.rightMargin;
              if ((i8 == 1073741824) || (localG2.height != -1))
                break label1817;
              i37 = 1;
              int i38 = localG2.topMargin + localG2.bottomMargin;
              i39 = i38 + localView2.getMeasuredHeight();
              int i40 = Math.max(i21, i39);
              if (i37 == 0)
                break label1823;
              i41 = i38;
              int i42 = Math.max(i20, i41);
              if ((i19 == 0) || (localG2.height != -1))
                break label1830;
              i43 = 1;
              if (bool1)
              {
                int i44 = localView2.getBaseline();
                if (i44 != -1)
                {
                  if (localG2.h >= 0)
                    break label1836;
                  i45 = this.e;
                  int i46 = (0xFFFFFFFE & (i45 & 0x70) >> 4) >> 1;
                  arrayOfInt1[i46] = Math.max(arrayOfInt1[i46], i44);
                  arrayOfInt2[i46] = Math.max(arrayOfInt2[i46], i39 - i44);
                }
              }
              f2 = f4;
              i30 = i42;
              i32 = i35;
              i31 = i43;
              i33 = i40;
              i29 = i34;
            }
          }
        }
        while (true)
        {
          i18++;
          i19 = i31;
          i20 = i30;
          i21 = i33;
          i22 = i32;
          f1 = f2;
          i17 = i29;
          break;
          if (i47 > 0)
          {
            localView3 = localView2;
            break label1469;
          }
          localView3 = localView2;
          i47 = 0;
          break label1469;
          label1779: int i36 = this.f;
          this.f = Math.max(i36, i36 + localView2.getMeasuredWidth() + localG2.leftMargin + localG2.rightMargin);
          break label1538;
          label1817: i37 = 0;
          break label1557;
          label1823: i41 = i39;
          break label1598;
          label1830: i43 = 0;
          break label1624;
          label1836: i45 = localG2.h;
          break label1656;
          this.f += getPaddingLeft() + getPaddingRight();
          if ((arrayOfInt1[1] != -1) || (arrayOfInt1[0] != -1) || (arrayOfInt1[2] != -1) || (arrayOfInt1[3] != -1))
            i21 = Math.max(i21, Math.max(arrayOfInt1[3], Math.max(arrayOfInt1[0], Math.max(arrayOfInt1[1], arrayOfInt1[2]))) + Math.max(arrayOfInt2[3], Math.max(arrayOfInt2[0], Math.max(arrayOfInt2[1], arrayOfInt2[2]))));
          int i23 = i20;
          i2 = i22;
          int i24 = i21;
          i5 = i19;
          while (true)
          {
            if ((i5 == 0) && (i8 != 1073741824));
            int i50;
            while (true)
            {
              int i25 = Math.max(i23 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
              setMeasuredDimension(i16 | 0xFF000000 & i2, ViewCompat.resolveSizeAndState(i25, paramInt2, i2 << 16));
              if (i9 != 0)
              {
                int i26 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                int i27 = 0;
                while (i27 < i6)
                {
                  View localView1 = getChildAt(i27);
                  if (localView1.getVisibility() != 8)
                  {
                    G localG1 = (G)localView1.getLayoutParams();
                    if (localG1.height == -1)
                    {
                      int i28 = localG1.width;
                      localG1.width = localView1.getMeasuredWidth();
                      measureChildWithMargins(localView1, paramInt1, 0, i26, 0);
                      localG1.width = i28;
                    }
                  }
                  i27++;
                  continue;
                  i50 = Math.max(i3, i4);
                  if ((!bool2) || (i7 == 1073741824))
                    break label2237;
                  for (int i51 = 0; i51 < i6; i51++)
                  {
                    View localView4 = getChildAt(i51);
                    if ((localView4 == null) || (localView4.getVisibility() == 8) || (((G)localView4.getLayoutParams()).g <= 0.0F))
                      continue;
                    localView4.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(localView4.getMeasuredHeight(), 1073741824));
                  }
                }
              }
              return;
              i23 = i24;
            }
            label2237: i23 = i50;
            i24 = i15;
          }
          label2248: i34 = i17;
          i35 = i22;
          f4 = f1;
          break label1507;
          label2263: f2 = f1;
          i29 = i17;
          i30 = i20;
          i31 = i19;
          i32 = i22;
          i33 = i21;
        }
      }
      label2296: i60 = i9;
      i71 = 0;
      break label355;
      label2306: i69 = i12;
      i70 = i10;
      break label333;
      label2317: i55 = i12;
      i56 = i10;
      f6 = f1;
      i57 = i5;
      i58 = i4;
      i59 = i3;
      i60 = i9;
      i61 = i1;
      i62 = i2;
    }
  }

  private void b(Canvas paramCanvas, int paramInt)
  {
    this.k.setBounds(paramInt, getPaddingTop() + this.o, paramInt + this.l, getHeight() - getPaddingBottom() - this.o);
    this.k.draw(paramCanvas);
  }

  private static void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }

  public G a(AttributeSet paramAttributeSet)
  {
    return new G(getContext(), paramAttributeSet);
  }

  protected G b(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new G(paramLayoutParams);
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof G;
  }

  public int getBaseline()
  {
    int i1 = -1;
    if (this.b < 0)
      i1 = super.getBaseline();
    View localView;
    int i2;
    while (true)
    {
      return i1;
      if (getChildCount() <= this.b)
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
      localView = getChildAt(this.b);
      i2 = localView.getBaseline();
      if (i2 != i1)
        break;
      if (this.b == 0)
        continue;
      throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
    }
    int i3 = this.c;
    int i5;
    if (this.d == 1)
    {
      i5 = 0x70 & this.e;
      if (i5 == 48);
    }
    int i4;
    switch (i5)
    {
    default:
      i4 = i3;
    case 80:
    case 16:
    }
    while (true)
    {
      return i2 + (i4 + ((G)localView.getLayoutParams()).topMargin);
      i4 = getBottom() - getTop() - getPaddingBottom() - this.f;
      continue;
      i4 = i3 + (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - this.f) / 2;
    }
  }

  protected G j()
  {
    if (this.d == 0)
      return new G(-2, -2);
    if (this.d == 1)
      return new G(-1, -2);
    return null;
  }

  public final int k()
  {
    return this.l;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (this.k == null);
    int i1;
    boolean bool;
    label266: 
    do
    {
      while (true)
      {
        return;
        if (this.d != 1)
          break;
        int i5 = getChildCount();
        for (int i6 = 0; i6 < i5; i6++)
        {
          View localView4 = getChildAt(i6);
          if ((localView4 == null) || (localView4.getVisibility() == 8) || (!a(i6)))
            continue;
          G localG4 = (G)localView4.getLayoutParams();
          a(paramCanvas, localView4.getTop() - localG4.topMargin - this.m);
        }
        if (!a(i5))
          continue;
        View localView3 = getChildAt(i5 - 1);
        if (localView3 == null);
        G localG3;
        for (int i7 = getHeight() - getPaddingBottom() - this.m; ; i7 = localView3.getBottom() + localG3.bottomMargin)
        {
          a(paramCanvas, i7);
          return;
          localG3 = (G)localView3.getLayoutParams();
        }
      }
      i1 = getChildCount();
      bool = ae.a(this);
      int i2 = 0;
      if (i2 >= i1)
        continue;
      View localView2 = getChildAt(i2);
      G localG2;
      if ((localView2 != null) && (localView2.getVisibility() != 8) && (a(i2)))
      {
        localG2 = (G)localView2.getLayoutParams();
        if (!bool)
          break label266;
      }
      for (int i4 = localView2.getRight() + localG2.rightMargin; ; i4 = localView2.getLeft() - localG2.leftMargin - this.l)
      {
        b(paramCanvas, i4);
        i2++;
        break;
      }
    }
    while (!a(i1));
    View localView1 = getChildAt(i1 - 1);
    int i3;
    if (localView1 == null)
      if (bool)
        i3 = getPaddingLeft();
    while (true)
    {
      b(paramCanvas, i3);
      return;
      i3 = getWidth() - getPaddingRight() - this.l;
      continue;
      G localG1 = (G)localView1.getLayoutParams();
      if (bool)
      {
        i3 = localView1.getLeft() - localG1.leftMargin - this.l;
        continue;
      }
      i3 = localView1.getRight() + localG1.rightMargin;
    }
  }

  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
    }
  }

  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i23;
    int i25;
    int i26;
    int i29;
    int i30;
    int i31;
    int i32;
    label109: View localView2;
    int i33;
    if (this.d == 1)
    {
      i23 = getPaddingLeft();
      int i24 = paramInt3 - paramInt1;
      i25 = i24 - getPaddingRight();
      i26 = i24 - i23 - getPaddingRight();
      int i27 = getChildCount();
      int i28 = 0x70 & this.e;
      i29 = 0x800007 & this.e;
      switch (i28)
      {
      default:
        i30 = getPaddingTop();
        i31 = 0;
        i32 = i30;
        if (i31 < i27)
        {
          localView2 = getChildAt(i31);
          if (localView2 != null)
            break;
          i33 = i31;
        }
      case 80:
      case 16:
      }
    }
    while (true)
    {
      i31 = i33 + 1;
      break label109;
      i30 = paramInt4 + getPaddingTop() - paramInt2 - this.f;
      break;
      i30 = getPaddingTop() + (paramInt4 - paramInt2 - this.f) / 2;
      break;
      if (localView2.getVisibility() != 8)
      {
        int i34 = localView2.getMeasuredWidth();
        int i35 = localView2.getMeasuredHeight();
        G localG2 = (G)localView2.getLayoutParams();
        int i36 = localG2.h;
        if (i36 < 0)
          i36 = i29;
        int i37;
        switch (0x7 & GravityCompat.getAbsoluteGravity(i36, ViewCompat.getLayoutDirection(this)))
        {
        default:
          i37 = i23 + localG2.leftMargin;
        case 1:
        case 5:
        }
        while (true)
        {
          if (a(i31))
            i32 += this.m;
          int i38 = i32 + localG2.topMargin;
          b(localView2, i37, i38, i34, i35);
          i32 = i38 + (i35 + localG2.bottomMargin);
          i33 = i31;
          break;
          i37 = i23 + (i26 - i34) / 2 + localG2.leftMargin - localG2.rightMargin;
          continue;
          i37 = i25 - i34 - localG2.rightMargin;
        }
        boolean bool1 = ae.a(this);
        int i1 = getPaddingTop();
        int i2 = paramInt4 - paramInt2;
        int i3 = i2 - getPaddingBottom();
        int i4 = i2 - i1 - getPaddingBottom();
        int i5 = getChildCount();
        int i6 = 0x800007 & this.e;
        int i7 = 0x70 & this.e;
        boolean bool2 = this.a;
        int[] arrayOfInt1 = this.i;
        int[] arrayOfInt2 = this.j;
        int i8;
        int i10;
        int i9;
        switch (GravityCompat.getAbsoluteGravity(i6, ViewCompat.getLayoutDirection(this)))
        {
        default:
          i8 = getPaddingLeft();
          if (!bool1)
            break;
          i10 = i5 - 1;
          i9 = -1;
        case 5:
        case 1:
        }
        while (true)
        {
          int i11 = 0;
          label527: int i12;
          View localView1;
          int i13;
          if (i11 < i5)
          {
            i12 = i10 + i9 * i11;
            localView1 = getChildAt(i12);
            if (localView1 == null)
              i13 = i11;
          }
          while (true)
          {
            i11 = i13 + 1;
            break label527;
            i8 = paramInt3 + getPaddingLeft() - paramInt1 - this.f;
            break;
            i8 = getPaddingLeft() + (paramInt3 - paramInt1 - this.f) / 2;
            break;
            if (localView1.getVisibility() != 8)
            {
              int i14 = localView1.getMeasuredWidth();
              int i15 = localView1.getMeasuredHeight();
              int i16 = -1;
              G localG1 = (G)localView1.getLayoutParams();
              if ((bool2) && (localG1.height != -1))
                i16 = localView1.getBaseline();
              int i17 = localG1.h;
              if (i17 < 0)
                i17 = i7;
              int i19;
              switch (i17 & 0x70)
              {
              default:
                i19 = i1;
              case 48:
              case 16:
              case 80:
              }
              while (true)
              {
                label728: if (a(i12));
                int i18;
                for (int i20 = i8 + this.l; ; i20 = i8)
                {
                  int i21 = i20 + localG1.leftMargin;
                  b(localView1, i21, i19, i14, i15);
                  i8 = i21 + (i14 + localG1.rightMargin);
                  i13 = i11;
                  break;
                  i18 = i1 + localG1.topMargin;
                  if (i16 == -1)
                    break label899;
                  i19 = i18 + (arrayOfInt1[1] - i16);
                  break label728;
                  i19 = i1 + (i4 - i15) / 2 + localG1.topMargin - localG1.bottomMargin;
                  break label728;
                  i18 = i3 - i15 - localG1.bottomMargin;
                  if (i16 == -1)
                    break label899;
                  int i22 = localView1.getMeasuredHeight() - i16;
                  i19 = i18 - (arrayOfInt2[2] - i22);
                  break label728;
                  return;
                }
                label899: i19 = i18;
              }
            }
            i13 = i11;
          }
          i9 = 1;
          i10 = 0;
        }
      }
      i33 = i31;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    float f1;
    int i6;
    int i7;
    int i8;
    int i9;
    int i10;
    boolean bool;
    int i12;
    int i13;
    int i51;
    float f6;
    int i57;
    int i58;
    label227: int i48;
    int i59;
    label439: int i60;
    int i61;
    int i62;
    int i50;
    int i64;
    label503: int i66;
    label522: float f5;
    int i45;
    int i47;
    int i44;
    int i49;
    int i46;
    int i43;
    if (this.d == 1)
    {
      this.f = 0;
      i1 = 0;
      i2 = 0;
      i3 = 0;
      i4 = 0;
      i5 = 1;
      f1 = 0.0F;
      i6 = getChildCount();
      i7 = View.MeasureSpec.getMode(paramInt1);
      i8 = View.MeasureSpec.getMode(paramInt2);
      i9 = 0;
      i10 = 0;
      int i11 = this.b;
      bool = this.h;
      i12 = -2147483648;
      i13 = 0;
      while (true)
        if (i13 < i6)
        {
          View localView5 = getChildAt(i13);
          if (localView5 == null)
          {
            this.f = this.f;
            i51 = i13;
            i13 = i51 + 1;
            continue;
          }
          if (localView5.getVisibility() == 8)
            break label1591;
          if (a(i13))
            this.f += this.m;
          G localG3 = (G)localView5.getLayoutParams();
          f6 = f1 + localG3.g;
          if ((i8 == 1073741824) && (localG3.height == 0) && (localG3.g > 0.0F))
          {
            int i69 = this.f;
            this.f = Math.max(i69, i69 + localG3.topMargin + localG3.bottomMargin);
            i57 = i12;
            i58 = 1;
            if ((i11 >= 0) && (i11 == i13 + 1))
              this.c = this.f;
            if ((i13 < i11) && (localG3.g > 0.0F))
              throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
          }
          else
          {
            int i52 = -2147483648;
            if ((localG3.height == 0) && (localG3.g > 0.0F))
            {
              i52 = 0;
              localG3.height = -2;
            }
            int i53 = i52;
            if (f6 == 0.0F);
            for (int i54 = this.f; ; i54 = 0)
            {
              a(localView5, paramInt1, 0, paramInt2, i54);
              if (i53 != -2147483648)
                localG3.height = i53;
              int i55 = localView5.getMeasuredHeight();
              int i56 = this.f;
              this.f = Math.max(i56, i56 + i55 + localG3.topMargin + localG3.bottomMargin);
              if (!bool)
                break label1580;
              i57 = Math.max(i55, i12);
              i58 = i10;
              break;
            }
          }
          if ((i7 == 1073741824) || (localG3.width != -1))
            break label1570;
          i48 = 1;
          i59 = 1;
          i60 = localG3.leftMargin + localG3.rightMargin;
          i61 = i60 + localView5.getMeasuredWidth();
          i62 = Math.max(i1, i61);
          int i63 = ViewCompat.getMeasuredState(localView5);
          i50 = ae.a(i2, i63);
          if ((i5 == 0) || (localG3.width != -1))
            break;
          i64 = 1;
          if (localG3.g > 0.0F)
            if (i59 != 0)
            {
              i66 = i60;
              int i67 = Math.max(i4, i66);
              f5 = f6;
              i45 = i64;
              i47 = i3;
              i44 = i58;
              i49 = i62;
              int i68 = i57;
              i46 = i67;
              i43 = i68;
            }
        }
    }
    while (true)
    {
      i10 = i44;
      i5 = i45;
      i4 = i46;
      i3 = i47;
      i2 = i50;
      i1 = i49;
      i9 = i48;
      i12 = i43;
      f1 = f5;
      i51 = i13;
      break;
      i64 = 0;
      break label503;
      i66 = i61;
      break label522;
      if (i59 != 0);
      while (true)
      {
        int i65 = Math.max(i3, i60);
        f5 = f6;
        i45 = i64;
        i47 = i65;
        i44 = i58;
        i43 = i57;
        i46 = i4;
        i49 = i62;
        break;
        i60 = i61;
      }
      if ((this.f > 0) && (a(i6)))
        this.f += this.m;
      if ((bool) && ((i8 == -2147483648) || (i8 == 0)))
      {
        this.f = 0;
        int i40 = 0;
        if (i40 < i6)
        {
          View localView4 = getChildAt(i40);
          int i42;
          if (localView4 == null)
          {
            this.f = this.f;
            i42 = i40;
          }
          while (true)
          {
            i40 = i42 + 1;
            break;
            if (localView4.getVisibility() == 8)
            {
              i42 = i40;
              continue;
            }
            G localG2 = (G)localView4.getLayoutParams();
            int i41 = this.f;
            this.f = Math.max(i41, i41 + i12 + localG2.topMargin + localG2.bottomMargin);
            i42 = i40;
          }
        }
      }
      this.f += getPaddingTop() + getPaddingBottom();
      int i14 = ViewCompat.resolveSizeAndState(Math.max(this.f, getSuggestedMinimumHeight()), paramInt2, 0);
      int i15 = (0xFFFFFF & i14) - this.f;
      int i16;
      int i17;
      int i18;
      int i19;
      int i20;
      View localView1;
      int i34;
      View localView2;
      label1078: int i26;
      int i27;
      float f2;
      label1120: int i28;
      int i29;
      int i31;
      label1171: label1176: int i23;
      label1202: int i24;
      int i25;
      if ((i10 != 0) || ((i15 != 0) && (f1 > 0.0F)))
      {
        if (this.g > 0.0F)
          f1 = this.g;
        this.f = 0;
        i16 = 0;
        i17 = i5;
        i18 = i3;
        i19 = i2;
        i20 = i1;
        if (i16 < i6)
        {
          localView1 = getChildAt(i16);
          if (localView1.getVisibility() == 8)
            break label1543;
          G localG1 = (G)localView1.getLayoutParams();
          float f3 = localG1.g;
          if (f3 <= 0.0F)
            break label1528;
          i34 = (int)(f3 * i15 / f1);
          float f4 = f1 - f3;
          int i35 = i15 - i34;
          int i36 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localG1.leftMargin + localG1.rightMargin, localG1.width);
          if ((localG1.height != 0) || (i8 != 1073741824))
          {
            i34 += localView1.getMeasuredHeight();
            if (i34 < 0)
              i34 = 0;
            localView2 = localView1;
            localView2.measure(i36, View.MeasureSpec.makeMeasureSpec(i34, 1073741824));
            int i37 = ae.a(i19, 0xFFFFFF00 & ViewCompat.getMeasuredState(localView1));
            i26 = i35;
            i27 = i37;
            f2 = f4;
            i28 = localG1.leftMargin + localG1.rightMargin;
            i29 = i28 + localView1.getMeasuredWidth();
            int i30 = Math.max(i20, i29);
            if ((i7 == 1073741824) || (localG1.width != -1))
              break label1297;
            i31 = 1;
            if (i31 == 0)
              break label1303;
            int i32 = Math.max(i18, i28);
            if ((i17 == 0) || (localG1.width != -1))
              break label1310;
            i23 = 1;
            int i33 = this.f;
            this.f = Math.max(i33, i33 + localView1.getMeasuredHeight() + localG1.topMargin + localG1.bottomMargin);
            i24 = i32;
            i25 = i30;
          }
        }
      }
      while (true)
      {
        i16++;
        i17 = i23;
        i18 = i24;
        i19 = i27;
        i20 = i25;
        i15 = i26;
        f1 = f2;
        break;
        if (i34 > 0)
        {
          localView2 = localView1;
          break label1078;
        }
        localView2 = localView1;
        i34 = 0;
        break label1078;
        label1297: i31 = 0;
        break label1171;
        label1303: i28 = i29;
        break label1176;
        label1310: i23 = 0;
        break label1202;
        this.f += getPaddingTop() + getPaddingBottom();
        int i21 = i18;
        i2 = i19;
        int i22 = i20;
        i5 = i17;
        while (true)
        {
          if ((i5 == 0) && (i7 != 1073741824));
          int i38;
          while (true)
          {
            setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(i21 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), paramInt1, i2), i14);
            if (i9 != 0)
              a(i6, paramInt2);
            return;
            i38 = Math.max(i3, i4);
            if ((!bool) || (i8 == 1073741824))
              break;
            for (int i39 = 0; i39 < i6; i39++)
            {
              View localView3 = getChildAt(i39);
              if ((localView3 == null) || (localView3.getVisibility() == 8) || (((G)localView3.getLayoutParams()).g <= 0.0F))
                continue;
              localView3.measure(View.MeasureSpec.makeMeasureSpec(localView3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
            }
            b(paramInt1, paramInt2);
            return;
            i21 = i22;
          }
          i21 = i38;
          i22 = i1;
        }
        label1528: f2 = f1;
        i26 = i15;
        i27 = i19;
        break label1120;
        label1543: f2 = f1;
        i23 = i17;
        i24 = i18;
        i25 = i20;
        i26 = i15;
        i27 = i19;
      }
      label1570: i48 = i9;
      i59 = 0;
      break label439;
      label1580: i57 = i12;
      i58 = i10;
      break label227;
      label1591: i43 = i12;
      i44 = i10;
      f5 = f1;
      i45 = i5;
      i46 = i4;
      i47 = i3;
      i48 = i9;
      i49 = i1;
      i50 = i2;
    }
  }

  public void setBaselineAligned(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public void setBaselineAlignedChildIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getChildCount()))
      throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    this.b = paramInt;
  }

  public void setDividerDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == this.k)
      return;
    this.k = paramDrawable;
    if (paramDrawable != null)
      this.l = paramDrawable.getIntrinsicWidth();
    for (this.m = paramDrawable.getIntrinsicHeight(); ; this.m = 0)
    {
      boolean bool = false;
      if (paramDrawable == null)
        bool = true;
      setWillNotDraw(bool);
      requestLayout();
      return;
      this.l = 0;
    }
  }

  public void setDividerPadding(int paramInt)
  {
    this.o = paramInt;
  }

  public void setGravity(int paramInt)
  {
    if (this.e != paramInt)
      if ((0x800007 & paramInt) != 0)
        break label44;
    label44: for (int i1 = 0x800003 | paramInt; ; i1 = paramInt)
    {
      if ((i1 & 0x70) == 0)
        i1 |= 48;
      this.e = i1;
      requestLayout();
      return;
    }
  }

  public void setHorizontalGravity(int paramInt)
  {
    int i1 = paramInt & 0x800007;
    if ((0x800007 & this.e) != i1)
    {
      this.e = (i1 | 0xFF7FFFF8 & this.e);
      requestLayout();
    }
  }

  public void setMeasureWithLargestChildEnabled(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public void setOrientation(int paramInt)
  {
    if (this.d != paramInt)
    {
      this.d = paramInt;
      requestLayout();
    }
  }

  public void setShowDividers(int paramInt)
  {
    if (paramInt != this.n)
      requestLayout();
    this.n = paramInt;
  }

  public void setVerticalGravity(int paramInt)
  {
    int i1 = paramInt & 0x70;
    if ((0x70 & this.e) != i1)
    {
      this.e = (i1 | 0xFFFFFF8F & this.e);
      requestLayout();
    }
  }

  public void setWeightSum(float paramFloat)
  {
    this.g = Math.max(0.0F, paramFloat);
  }

  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.LinearLayoutCompat
 * JD-Core Version:    0.6.0
 */