    v3 = -0x1;
    v12 = 0x0;
    v6 = 0x1;
    v2 = 0x0;
    v0 = p1.getAction();
    v0 = v0 & 0xff;
    v1 = 0x3;
    if (v0 == v1 || v0 == v6) {
        p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v2;
        p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v2;
        p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v3;
        v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
        if (v0 != 0) {
            v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
            v0.recycle();
            v0 = 0x0;
            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker = v0;
        }
        return v2
    }
    if (v0 != 0) {
        if (p0.mIsBeingDragged) {
            v2 = v6;
            return v2
        }
        if (p0.mIsUnableToDrag) {
            return v2
        }
    }
    switch (v0) {
        case 2:
            if (p0.mActivePointerId != v3) {
                v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
                v7 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
                v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX;
                v8 = v7 - v1;
                v9 = Ljava/lang/Math.abs(v8);
                v10 = Landroid/support/v4/view/MotionEventCompat.getY(p1, v0);
                v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY;
                v0 = v10 - v0;
                v11 = Ljava/lang/Math.abs(v0);
                cmpl-float v0, v8, v12
                if (v0 != 0) {
                    if (p0.mLastMotionX < p0.mGutterSize && v8 > v12) {
                        v0 = v6;
                    } else {
                        v1 = p0.getWidth();
                        v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mGutterSize;
                        v1 -= v3;
                        int-to-float v1, v1
                        cmpl-float v0, v0, v1
                        if (v0 <= 0 || v8 >= v12) {
                            v0 = v2;
                        } else {
                            v0 = v6;
                        }
                    }
                    if (v0 == 0) {
                        float-to-int v3, v8
                        float-to-int v4, v7
                        float-to-int v5, v10
                        v0 = p0;
                        v1 = p0;
                        v0 = v0.a(..v5);
                        if (v0 != 0) {
                            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v7;
                            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v10;
                            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v6;
                            return v2
                        }
                    }
                }
                if (v9 <= p0.mTouchSlop || v9 * 0.5f <= v11) {
                    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
                    int-to-float v0, v0
                    cmpl-float v0, v11, v0
                    if (v0 > 0) {
                        p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v6;
                    }
                } else {
                    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v6;
                    p0.b(v6);
                    cmpl-float v0, v8, v12
                    if (v0 <= 0) {
                        v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
                        v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
                        int-to-float v1, v1
                        v0 -= v1;
                    } else {
                        v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
                        v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
                        int-to-float v1, v1
                        v0 += v1;
                    }
                    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
                    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v10;
                    p0.b(v6);
                }
                if (p0.mIsBeingDragged != 0 && p0.a(v7) != 0) {
                    ViewCompat.postInvalidateOnAnimation(p0);
                }
            }
            break;
        case 0:
            v0 = p1.getX();
            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX = v0;
            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
            v0 = p1.getY();
            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY = v0;
            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v0;
            v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v2);
            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v2;
            v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
            v0.computeScrollOffset();
            v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState;
            if (v0 == 2) {
                v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
                v0 = v0.getFinalX();
                v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
                v1 = v1.getCurrX();
                v0 -= v1;
                v0 = Ljava/lang/Math.abs(v0);
                v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCloseEnough;
                if (v0 > v1) {
                    break;
                }
            }
            p0.a(v2);
            p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v2;
            break;
        case 6:
            p0.a(p1);
            break;
    }
    if (p0.mVelocityTracker == 0) {
        v0 = invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
        p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker = v0;
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v0.addMovement(p1);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    return v2
