    v9 = p0.getChildCount();
    v10 = p4 - p2;
    v11 = p5 - p3;
    v6 = p0.getPaddingLeft();
    v2 = p0.getPaddingTop();
    v5 = p0.getPaddingRight();
    v3 = p0.getPaddingBottom();
    v12 = p0.getScrollX();
    v4 = 0x0;
    v1 = 0x0;
    v8 = v1;
    :goto_0
    while (v8 < v9) {
        v0 = p0;
        v13 = v0.getChildAt(v8);
        v1 = (ct)v13.getLayoutParams();
        if (v13.getVisibility() != 8 && v1.a != 0) {
            v7 = v1.b & 0x7;
            v14 = v1.b & 0x70;
            switch (v7) {
                case 1:
                    v1 = v13.getMeasuredWidth();
                    v1 += v6;
                    v7 = v6;
                    v6 = v1;
                    break;
                case 2:
                    v1 = v13.getMeasuredWidth();
                    v1 = v10 - v1;
                    v1 = v1 / 0x2;
                    v1 = Ljava/lang/Math.max(v1, v6);
                    v7 = v1;
                    break;
                case 3:
                    v1 = v10 - v5;
                    v7 = v13.getMeasuredWidth();
                    v1 -= v7;
                    v7 = v13.getMeasuredWidth();
                    v5 += v7;
                    v7 = v1;
                    break;
                default:
                    v7 = v6;
                    break;
            }
            switch (v14) {
                case 48:
                    v1 = v13.getMeasuredHeight();
                    v1 += v2;
                    v16 = v2;
                    v2 = v3;
                    v3 = v1;
                    v1 = v16;
                    break;
                case 16:
                    v1 = v13.getMeasuredHeight();
                    v1 = v11 - v1;
                    v1 = v1 / 0x2;
                    v1 = Ljava/lang/Math.max(v1, v2);
                    v16 = v3;
                    v3 = v2;
                    v2 = v16;
                    break;
                case 80:
                    v1 = v11 - v3;
                    v14 = v13.getMeasuredHeight();
                    v1 -= v14;
                    v14 = v13.getMeasuredHeight();
                    v3 += v14;
                    v16 = v3;
                    v3 = v2;
                    v2 = v16;
                    break;
                default:
                    v1 = v2;
                    v16 = v3;
                    v3 = v2;
                    v2 = v16;
                    break;
            }
            v7 += v12;
            v14 = v13.getMeasuredWidth();
            v14 += v7;
            v15 = v13.getMeasuredHeight();
            v15 += v1;
            v13.layout(v7, v1, v14, v15);
            v4 = v3;
            v3 = v2;
        }
        v8++;
        v2 = v4;
        v4++;
    }
    v1 = v10 - v6;
    v7 = v1 - v5;
    for (v5 = 0; v5 < v9; v5++) {
        v0 = p0;
        v8 = v0.getChildAt(v5);
        if (v8.getVisibility() != 8) {
            v1 = v8.getLayoutParams();
            check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ct;
            if (v1.a == 0 && p0.a(v8) != 0) {
                int-to-float v12, v7
                v10 = v10.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
                v10 *= v12;
                float-to-int v10, v10
                v10 += v6;
                v12 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->d;
                if (v12 != 0) {
                    v12 = 0x0;
                    v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->d = v12;
                    int-to-float v12, v7
                    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->c;
                    v1 *= v12;
                    float-to-int v1, v1
                    v12 = 0x40000000    # 2.0f;
                    v1 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v1, v12);
                    v12 = v11 - v2;
                    v12 -= v3;
                    v13 = 0x40000000    # 2.0f;
                    v12 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v12, v13);
                    v8.measure(v1, v12);
                }
                v1 = v8.getMeasuredWidth();
                v1 += v10;
                v12 = v8.getMeasuredHeight();
                v12 += v2;
                v8.layout(v10, v2, v1, v12);
            }
        }
    }
    v0 = p0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTopPageBounds = v2;
    v1 = v11 - v3;
    v0 = p0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mBottomPageBounds = v1;
    v0 = p0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDecorChildCount = v4;
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout;
    if (v1 != 0) {
        v0 = p0;
        v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
        v2 = 0x0;
        v3 = 0x0;
        v4 = 0x0;
        v0 = p0;
        v0.a(v1, v2, v3, v4);
    }
    v1 = 0x0;
    v0 = p0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout = v1;
    return;
