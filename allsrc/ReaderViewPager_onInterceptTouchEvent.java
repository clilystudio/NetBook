    v3 = -0x1;
    v12 = 0x0;
    v6 = 0x1;
    v2 = 0x0;
    v0 = p1.getAction() & 0xff;
    v1 = 0x3;
    if (v0 == 3 || v0 == 1) {
        this.mIsBeingDragged = v2;
        this.mIsUnableToDrag = v2;
        this.mActivePointerId = v3;
        if (this.mVelocityTracker != 0) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = 0;
        }
        return v2
    }
    if (v0 != 0) {
        if (this.mIsBeingDragged) {
            v2 = v6;
            return v2
        }
        if (this.mIsUnableToDrag) {
            return v2
        }
    }
    switch (v0) {
        case 2:
            if (this.mActivePointerId != v3) {
                v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
                v7 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
                v1 = this.mLastMotionX;
                v8 = v7 - v1;
                v9 = Ljava/lang/Math.abs(v8);
                v10 = Landroid/support/v4/view/MotionEventCompat.getY(p1, v0);
                v0 = this.mInitialMotionY;
                v0 = v10 - v0;
                v11 = Ljava/lang/Math.abs(v0);
                cmpl-float v0, v8, v12
                if (v0 != 0) {
                    if (this.mLastMotionX < this.mGutterSize && v8 > v12) {
                        v0 = v6;
                    } else {
                        v1 = this.getWidth();
                        v3 = this.mGutterSize;
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
                            this.mLastMotionX = v7;
                            this.mLastMotionY = v10;
                            this.mIsUnableToDrag = v6;
                            return v2
                        }
                    }
                }
                if (v9 <= this.mTouchSlop || v9 * 0.5f <= v11) {
                    v0 = this.mTouchSlop;
                    int-to-float v0, v0
                    cmpl-float v0, v11, v0
                    if (v0 > 0) {
                        this.mIsUnableToDrag = v6;
                    }
                } else {
                    this.mIsBeingDragged = v6;
                    this.b(v6);
                    cmpl-float v0, v8, v12
                    if (v0 <= 0) {
                        v0 = this.mInitialMotionX;
                        v1 = this.mTouchSlop;
                        int-to-float v1, v1
                        v0 -= v1;
                    } else {
                        v0 = this.mInitialMotionX;
                        v1 = this.mTouchSlop;
                        int-to-float v1, v1
                        v0 += v1;
                    }
                    this.mLastMotionX = v0;
                    this.mLastMotionY = v10;
                    this.b(v6);
                }
                if (this.mIsBeingDragged != 0 && this.a(v7) != 0) {
                    ViewCompat.postInvalidateOnAnimation(p0);
                }
            }
            break;
        case 0:
            v0 = p1.getX();
            this.mInitialMotionX = v0;
            this.mLastMotionX = v0;
            v0 = p1.getY();
            this.mInitialMotionY = v0;
            this.mLastMotionY = v0;
            v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v2);
            this.mActivePointerId = v0;
            this.mIsUnableToDrag = v2;
            v0 = this.mScroller;
            v0.computeScrollOffset();
            v0 = this.mScrollState;
            if (v0 == 2) {
                v0 = this.mScroller;
                v0 = v0.getFinalX();
                v1 = this.mScroller;
                v1 = v1.getCurrX();
                v0 -= v1;
                v0 = Ljava/lang/Math.abs(v0);
                v1 = this.mCloseEnough;
                if (v0 > v1) {
                    break;
                }
            }
            this.a(v2);
            this.mIsBeingDragged = v2;
            break;
        case 6:
            this.a(p1);
            break;
    }
    if (this.mVelocityTracker == 0) {
        v0 = invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
        this.mVelocityTracker = v0;
    }
    v0 = this.mVelocityTracker;
    v0.addMovement(p1);
    v2 = this.mIsBeingDragged;
    return v2
