    v0 = 0x0;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager.getDefaultSize(v0, p1);
    v1 = 0x0;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager.getDefaultSize(v1, p2);
    p0.setMeasuredDimension(v0, v1);
    v0 = p0.getMeasuredWidth();
    v1 = v0 / 0xa;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDefaultGutterSize;
    v1 = Ljava/lang/Math.min(v1, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mGutterSize = v1;
    v1 = p0.getPaddingLeft();
    v0 -= v1;
    v1 = p0.getPaddingRight();
    v3 = v0 - v1;
    v0 = p0.getMeasuredHeight();
    v1 = p0.getPaddingTop();
    v0 -= v1;
    v1 = p0.getPaddingBottom();
    v5 = v0 - v1;
    v9 = p0.getChildCount();
    v0 = 0x0;
    v8 = v0;
    :goto_0
    if (v8 >= v9) {
//       if-ge v8, v9, :cond_8
    }
    v10 = p0.getChildAt(v8);
    v0 = v10.getVisibility();
    v1 = 0x8;
    if (v0 == v1) {
//       if-eq v0, v1, :cond_3
    }
    v0 = v10.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v6 = v1 & 0x7;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v4 = v1 & 0x70;
    v2 = -0x80000000;
    v1 = -0x80000000;
    v7 = 0x30;
    if (v4 == v7) {
//       if-eq v4, v7, :cond_0
    }
    v7 = 0x50;
    if (v4 != v7) {
//       if-ne v4, v7, :cond_4
    }
    :cond_0
    v4 = 0x1;
    v7 = v4;
    :goto_1
    v4 = 0x3;
    if (v6 == v4) {
//       if-eq v6, v4, :cond_1
    }
    v4 = 0x5;
    if (v6 != v4) {
//       if-ne v6, v4, :cond_5
    }
    :cond_1
    v4 = 0x1;
    v6 = v4;
    :goto_2
    if (v7 == 0) {
//       if-eqz v7, :cond_6
    }
    v2 = 0x40000000    # 2.0f;
    :cond_2
    :goto_3
    v4 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
    v11 = -0x2;
    if (v4 == v11) {
//       if-eq v4, v11, :cond_e
    }
    v4 = 0x40000000    # 2.0f;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
    v11 = -0x1;
    if (v2 == v11) {
//       if-eq v2, v11, :cond_d
    }
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
    :goto_4
    v11 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->height;
    v12 = -0x2;
    if (v11 == v12) {
//       if-eq v11, v12, :cond_c
    }
    v1 = 0x40000000    # 2.0f;
    v11 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->height;
    v12 = -0x1;
    if (v11 == v12) {
//       if-eq v11, v12, :cond_c
    }
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->height;
    :goto_5
    v2 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v2, v4);
    v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v0, v1);
    v10.measure(v2, v0);
    if (v7 == 0) {
//       if-eqz v7, :cond_7
    }
    v0 = v10.getMeasuredHeight();
    v5 -= v0;
    :cond_3
    :goto_6
    v0 = v8 + 0x1;
    v8 = v0;
    goto :goto_0
    :cond_4
    v4 = 0x0;
    v7 = v4;
    goto :goto_1
    :cond_5
    v4 = 0x0;
    v6 = v4;
    goto :goto_2
    :cond_6
    if (v6 == 0) {
//       if-eqz v6, :cond_2
    }
    v1 = 0x40000000    # 2.0f;
    goto :goto_3
    :cond_7
    if (v6 == 0) {
//       if-eqz v6, :cond_3
    }
    v0 = v10.getMeasuredWidth();
    v3 -= v0;
    goto :goto_6
    :cond_8
    v0 = 0x40000000    # 2.0f;
    v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v3, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildWidthMeasureSpec = v0;
    v0 = 0x40000000    # 2.0f;
    v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v5, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildHeightMeasureSpec = v0;
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout = v0;
    p0.b();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout = v0;
    v2 = p0.getChildCount();
    v0 = 0x0;
    v1 = v0;
    :goto_7
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_b
    }
    v4 = p0.getChildAt(v1);
    v0 = v4.getVisibility();
    v5 = 0x8;
    if (v0 == v5) {
//       if-eq v0, v5, :cond_a
    }
    v0 = v4.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    if (v0 == 0) {
//       if-eqz v0, :cond_9
    }
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v5 != 0) {
//       if-nez v5, :cond_a
    }
    :cond_9
    int-to-float v5, v3
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->c;
    v0 *= v5;
    float-to-int v0, v0
    v5 = 0x40000000    # 2.0f;
    v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v0, v5);
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildHeightMeasureSpec;
    v4.measure(v0, v5);
    :cond_a
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_7
    :cond_b
    return;
    :cond_c
    v0 = v5;
    goto :goto_5
    :cond_d
    v2 = v3;
    goto/16 :goto_4
    :cond_e
    v4 = v2;
    v2 = v3;
    goto/16 :goto_4
