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
    if (v8 >= v9) {
//       if-ge v8, v9, :cond_0
    }
    v0 = p0;
    v13 = v0.getChildAt(v8);
    v1 = v13.getVisibility();
    v7 = 0x8;
    if (v1 == v7) {
//       if-eq v1, v7, :cond_5
    }
    v1 = v13.getLayoutParams();
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v7 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v7 == 0) {
//       if-eqz v7, :cond_5
    }
    v7 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v7 = v7 & 0x7;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v14 = v1 & 0x70;
    packed-switch v7, :pswitch_data_0
    :pswitch_0
    v7 = v6;
    :goto_1
    sparse-switch v14, :sswitch_data_0
    v1 = v2;
    v16 = v3;
    v3 = v2;
    v2 = v16;
    :goto_2
    v7 += v12;
    v14 = v13.getMeasuredWidth();
    v14 += v7;
    v15 = v13.getMeasuredHeight();
    v15 += v1;
    v13.layout(v7, v1, v14, v15);
    v1 = v4 + 0x1;
    v4 = v3;
    v3 = v2;
    v2 = v5;
    v5 = v6;
    :goto_3
    v6 = v8 + 0x1;
    v8 = v6;
    v6 = v5;
    v5 = v2;
    v2 = v4;
    v4 = v1;
    goto :goto_0
    :cond_0
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
    :cond_3
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
    :cond_5
    v1 = v4;
    v4 = v2;
    v2 = v5;
    v5 = v6;
    goto/16 :goto_3
    nop
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
