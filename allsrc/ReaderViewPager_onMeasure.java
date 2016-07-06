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
    while (int v8 = 0;v8 < p0.getChildCount();v8++) {
        v10 = p0.getChildAt(v8);
        v0 = v10.getVisibility();
        if (v0 != 8) {
            v0 = v10.getLayoutParams();
            check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
            if (v0 != 0 && v0.a != 0) {
                v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
                v6 = v1 & 0x7;
                v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
                v4 = v1 & 0x70;
                v2 = -0x80000000;
                v1 = -0x80000000;
                v7 = 0x30;
                if (v4 != 0x30 && v4 != 0x50) {
                    v4 = 0x0;
                    v7 = v4;
                } else {
                    v4 = 0x1;
                    v7 = v4;
                }
                if (v6 != 3 && v6 != 5) {
                    v6 = 0;
                } else {
                    v6 = 1;
                }
                if (v7 == 0) {
                    if (v6 != 0) {
                        v1 = 0x40000000    # 2.0f;
                    }
                } else {
                    v2 = 0x40000000    # 2.0f;
                }
                v4 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
                v11 = -0x2;
                if (v4 == v11) {
                    v4 = v2;
                    v2 = v3;
                } else {
                    v4 = 0x40000000    # 2.0f;
                    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
                    v11 = -0x1;
                    if (v2 == v11) {
                        v2 = v3;
                    } else {
                        v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
                    }
                }
                v11 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->height;
                v12 = -0x2;
                if (v11 == v12) {
                    v0 = v5;
                } else {
                    v1 = 0x40000000    # 2.0f;
                    v11 = v0.height;
                    v12 = -0x1;
                    if (v11 == v12) {
                        v0 = v5;
                    } else {
                        v0 = v0.height;
                    }
                }
                v2 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v2, v4);
                v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v0, v1);
                v10.measure(v2, v0);
                if (v7 == 0) {
                    if (v6 != 0) {
                        v0 = v10.getMeasuredWidth();
                        v3 -= v0;
                    }
                } else {
                    v0 = v10.getMeasuredHeight();
                    v5 -= v0;
                }
            }
        }
    }
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
    for (int v1 = 0;v1 < p0.getChildCount();v1++) {
        v4 = p0.getChildAt(v1);
        v0 = v4.getVisibility();
        v5 = 0x8;
        if (v0 != v5) {
            v0 = v4.getLayoutParams();
            check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
            if (v0 == 0 || v0.a == 0) {
                int-to-float v5, v3
                v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->c;
                v0 *= v5;
                float-to-int v0, v0
                v5 = 0x40000000    # 2.0f;
                v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v0, v5);
                v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildHeightMeasureSpec;
                v4.measure(v0, v5);
            }
        }
    }
    return;
