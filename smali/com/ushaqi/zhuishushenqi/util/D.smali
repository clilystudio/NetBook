.class public Lcom/ushaqi/zhuishushenqi/util/D;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"
# instance fields
.field private d:[I
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/util/D;;
    v0.getSimpleName();
    return;
.end method
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .prologue
    p0.<init>(p1);
    v0 = 0x2;
    new-array v0, v0, [I
    p0.Lcom/ushaqi/zhuishushenqi/util/D;->d = v0;
    return;
.end method
# virtual methods
.method public final a(Landroid/support/v7/widget/ar;II)V
    .locals 14
    .prologue
    v6 = Landroid/view/View$MeasureSpec.getMode(p2 .. p2);
    v7 = Landroid/view/View$MeasureSpec.getMode(p3 .. p3);
    v5 = Landroid/view/View$MeasureSpec.getSize(p2 .. p2);
    v4 = Landroid/view/View$MeasureSpec.getSize(p3 .. p3);
    v2 = 0x0;
    v1 = 0x0;
    v0 = 0x0;
    v3 = v2;
    v2 = v1;
    v1 = v0;
    :goto_0
    v0 = p0.o();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_3
    }
    v0 = 0x0;
    v8 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v1, v0);
    v0 = 0x0;
    v9 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v1, v0);
    v10 = p0.Lcom/ushaqi/zhuishushenqi/util/D;->d;
    v0 = 0x0;
    :try_start_0
    v11 = p1.b(v0);
    if (v11 == 0) {
//       if-eqz v11, :cond_0
    }
    v0 = v11.getLayoutParams();
    check-cast v0, Landroid/support/v7/widget/ap;
    v12 = p0.k();
    v13 = p0.m();
    v12 += v13;
    v13 = v0.Landroid/support/v7/widget/ap;->width;
    v8 = Landroid/view/ViewGroup.getChildMeasureSpec(v8, v12, v13);
    v12 = p0.l();
    v13 = p0.n();
    v12 += v13;
    v13 = v0.Landroid/support/v7/widget/ap;->height;
    v9 = Landroid/view/ViewGroup.getChildMeasureSpec(v9, v12, v13);
    v11.measure(v8, v9);
    v8 = 0x0;
    v9 = v11.getMeasuredWidth();
    v12 = v0.Landroid/support/v7/widget/ap;->leftMargin;
    v9 += v12;
    v12 = v0.Landroid/support/v7/widget/ap;->rightMargin;
    v9 += v12;
    v10[v8] = v9;
    v8 = 0x1;
    v9 = v11.getMeasuredHeight();
    v12 = v0.Landroid/support/v7/widget/ap;->bottomMargin;
    v9 += v12;
    v0 = v0.Landroid/support/v7/widget/ap;->topMargin;
    v0 += v9;
    v10[v8] = v0;
    p1.a(v11);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :cond_0
    :goto_1
    v0 = p0.e();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/D;->d;
    v8 = 0x0;
    v0 = v0[v8];
    v3 += v0;
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/D;->d;
    v2 = 0x1;
    v2 = v0[v2];
    :cond_1
    :goto_2
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
    :catch_0
    move-exception v0
    :try_start_1
    v0.printStackTrace();
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    goto :goto_1
    :catchall_0
    move-exception v0
    throw v0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/D;->d;
    v8 = 0x1;
    v0 = v0[v8];
    v2 += v0;
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/D;->d;
    v3 = 0x0;
    v3 = v0[v3];
    goto :goto_2
    :cond_3
    packed-switch v6, :pswitch_data_0
    :goto_3
    packed-switch v7, :pswitch_data_1
    :goto_4
    p0.e(v3, v2);
    return;
    :pswitch_0
    v3 = v5;
    goto :goto_3
    :pswitch_1
    v2 = v4;
    goto :goto_4
    nop
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
    :pswitch_data_1
    .packed-switch 0x40000000
        :pswitch_1
    .end packed-switch
.end method
