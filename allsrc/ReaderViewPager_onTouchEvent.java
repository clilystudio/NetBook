    v7 = -0x1;
    v4 = 0x0;
    v3 = 0x1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFakeDragging;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v3;
    :goto_0
    return v0
    :cond_0
    v0 = p1.getAction();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p1.getEdgeFlags();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v4;
    goto :goto_0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = v0.getCount();
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    :cond_2
    v0 = v4;
    goto :goto_0
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker = v0;
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v0.addMovement(p1);
    v0 = p1.getAction();
    v0 = v0 & 0xff;
    packed-switch v0, :pswitch_data_0
    :cond_5
    :goto_1
    :pswitch_0
    if (v4 == 0) {
//       if-eqz v4, :cond_6
    }
    Landroid/support/v4/view/ViewCompat.postInvalidateOnAnimation(p0);
    :cond_6
    v0 = v3;
    goto :goto_0
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0.abortAnimation();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v4;
    p0.b();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v3;
    p0.b(v3);
    v0 = p1.getX();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    v0 = p1.getY();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v0;
    v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v4);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
    goto :goto_1
    :pswitch_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 != 0) {
//       if-nez v0, :cond_7
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX;
    v2 = v1 - v2;
    v2 = Ljava/lang/Math.abs(v2);
    v5 = Landroid/support/v4/view/MotionEventCompat.getY(p1, v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY;
    v0 = v5 - v0;
    v0 = Ljava/lang/Math.abs(v0);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v6, v6
    cmpl-float v6, v2, v6
    if (v6 <= 0) {
//       if-lez v6, :cond_7
    }
    cmpl-float v0, v2, v0
    if (v0 <= 0) {
//       if-lez v0, :cond_7
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v3;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v0 = v1 - v0;
    v1 = 0x0;
    cmpl-float v0, v0, v1
    if (v0 <= 0) {
//       if-lez v0, :cond_8
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v1, v1
    v0 += v1;
    :goto_2
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v5;
    p0.b(v3);
    p0.b(v3);
    :cond_7
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v0 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    v0 = p0.a(v0);
    v4 = v0 | 0x0;
    goto/16 :goto_1
    :cond_8
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v1, v1
    v0 -= v1;
    goto :goto_2
    :pswitch_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v1 = 0x3e8;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMaximumVelocity;
    int-to-float v2, v2
    v0.computeCurrentVelocity(v1, v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/VelocityTrackerCompat.getXVelocity(v0, v1);
    float-to-int v5, v0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v3;
    v1 = p0.e();
    v2 = p0.getScrollX();
    v6 = p0.g();
    v0 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    int-to-float v2, v2
    int-to-float v1, v1
    v1 = v2 / v1;
    v2 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v1 -= v2;
    v2 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v2 = v1 / v2;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v1 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v1);
    v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v1);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v1 -= v6;
    float-to-int v1, v1
    v1 = Ljava/lang/Math.abs(v1);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFlingDistance;
    if (v1 <= v6) {
//       if-le v1, v6, :cond_b
    }
    v1 = Ljava/lang/Math.abs(v5);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMinimumVelocity;
    if (v1 <= v6) {
//       if-le v1, v6, :cond_b
    }
    if (v5 <= 0) {
//       if-lez v5, :cond_a
    }
    :goto_3
    v2 = v0;
    :goto_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_9
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v4 = v4.size();
    v4 = v4 + -0x1;
    v1 = v1.get(v4);
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v1 = Ljava/lang/Math.min(v2, v1);
    v2 = Ljava/lang/Math.max(v0, v1);
    :cond_9
    p0.a(v2, v3, v3, v5);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v7;
    p0.h();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v0 = v0.onRelease();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v1 = v1.onRelease();
    v4 = v0 | v1;
    goto/16 :goto_1
    :cond_a
    v0 = v0 + 0x1;
    goto :goto_3
    :cond_b
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v0 < v1) {
//       if-lt v0, v1, :cond_c
    }
    v1 = 0x3ecccccd    # 0.4f;
    :goto_5
    int-to-float v0, v0
    v0 += v2;
    v0 += v1;
    float-to-int v0, v0
    v2 = v0;
    goto :goto_4
    :cond_c
    v1 = 0x3f19999a    # 0.6f;
    goto :goto_5
    :pswitch_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    p0.a(v0, v3, v4, v4);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v7;
    p0.h();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v0 = v0.onRelease();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v1 = v1.onRelease();
    v4 = v0 | v1;
    goto/16 :goto_1
    :pswitch_5
    v0 = Landroid/support/v4/view/MotionEventCompat.getActionIndex(p1);
    v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v1;
    v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
    goto/16 :goto_1
    :pswitch_6
    p0.a(p1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v0 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    goto/16 :goto_1
    nop
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch